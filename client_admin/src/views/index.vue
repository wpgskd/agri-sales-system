<template>
	<div class="page_root" id="root_index">
		<div class="warp">
			<div class="container-fluid">
				<el-row>
					<el-col :span="4">
						<mm_label bg_color="bg_purple" icon="el-icon-user-solid" :url="url_user_count" unit="人"
								  title="用户数量"></mm_label>
					</el-col>
<!--					<el-col :span="4">-->
<!--						<mm_label bg_color="bg_green" icon="el-icon-view" :url="url_article_hits" unit="次"-->
<!--								  title="文章浏览量"></mm_label>-->
<!--					</el-col>-->
				</el-row>

				<el-row>
										<el-col v-if="user_group == '管理员' || $check_figure('/order_management/table')" :span="8">
						<div class="card chart">
									<newBarChart v-if="bar_obj_order_management.values.length > 0" id="bar_obj_order_management" :vm="bar_obj_order_management" :title="'订单管理统计'">
							</newBarChart>
							<div v-if="!bar_obj_order_management.values.length">订单管理没有符合条件的数据</div>
								</div>
					</el-col>
							<el-col v-if="user_group == '管理员' || $check_figure('/sales_data/table')" :span="8">
						<div class="card chart">
									<newLineChart v-if="line_obj_sales_data.values.length > 0" id="line_obj_sales_data" :vm="line_obj_sales_data" :title="'销售数据统计'">
							</newLineChart>
							<div v-if="!line_obj_sales_data.values.length">销售数据没有符合条件的数据</div>
								</div>
					</el-col>
					</el-row>


			</div>
		</div>
	</div>
</template>
<script>
	import mixin from "@/mixins/page.js";
	import pieChart from "@/components/charts/pie_chart";
	import barChart from "@/components/charts/bar_chart";
	import newBarChart from "@/components/charts/new_bar_chart";
	import lineChart from "@/components/charts/line_chart";
	import newLineChart from "@/components/charts/new_line_chart";
	import mm_label from "@/components/mm_label.vue";
	export default {
		mixins: [mixin],
		name: "Home",
		components: {
			pieChart,
			barChart,
			newBarChart,
			lineChart,
			newLineChart,
			mm_label
		},
		data() {
			return {
				activeName: "third",
													bar_obj_order_management: {
					names:[],
					xAxis: [],
					values:[]
				},
						line_obj_sales_data:{
					names:[],
					xAxis: [],
					values:[]
				},
					url_user_count: "~/api/user/count?",
				url_article_hits: "~/api/article/sum?field=hits",
			};
		},
		created() {
								// 执行订单管理数据获取
			this.get_list_order_management();
					// 执行销售数据数据获取
			this.get_list_sales_data();
			},
		mounted() {},
		methods: {
			async get_nickname(list,flag){
				if (flag) {
					for (let i=0;i<list.length;i++){
						await this.$get(
								"~/api/user/get_obj?user_id="+list[i],
								null,
								(json) => {
									if (json.result) {
										list[i] = json.result.obj.nickname;
									}
								});
					}
				}else {
					for (let i=0;i<list.length;i++){
						await this.$get(
								"~/api/user/get_obj?user_id="+list[i].name,
								null,
								(json) => {
									if (json.result) {
										list[i].name = json.result.obj.nickname;
									}
								});
					}
				}
			},
												// 获取订单管理统计柱状图
			async get_list_order_management() {
				let name_list = [];
				let query_str = "";
																																	let group_by_value = "trade_name";
								let flag = false;
												let date_flag = "其他"
																																																						name_list.push("购买数量");
				query_str = query_str+"purchase_quantity"+","
																																																	this.bar_obj_order_management.names = name_list
				query_str = query_str.substr(0,query_str.length-1);
				let data = {};
						let user_group = this.$store.state.user.user_group;
				let user_id = this.$store.state.user.user_id;
				if (user_group!='管理员'){
								let sqlwhere = "(";
																							if (user_group=="商家用户"){
						sqlwhere+= "seller_customers = " + user_id + " or ";
					}
																																																							if (user_group=="注册用户"){
						sqlwhere+= "purchase_user = " + user_id + " or ";
					}
																																																																													if (sqlwhere.length>1){
						sqlwhere = sqlwhere.substr(0,sqlwhere.length-4);
						sqlwhere += ")";
						data.sqlwhere = sqlwhere;
					}
							}
						await this.$get(
						"~/api/order_management/bar_group?field="+query_str+"&groupby="+group_by_value,
						data,
						(json) => {
							if (json.result) {
								let xAxis = [];
								let values = [];
								json.result.list.map((o) => {
									if (date_flag === "日期") {
										xAxis.push(this.$toTime(o[0] ,"yyyy-MM-dd"));
									}else if (date_flag === "时间") {
										xAxis.push(this.$toTime(o[0] ,"hh:mm:ss"));
									}else if (date_flag === "日长") {
										xAxis.push(this.$toTime(o[0] ,"yyyy-MM-dd hh:mm:ss"));
									}else {
										xAxis.push(o[0]);
									}
									values.push(o.splice(1))
								});
								this.bar_obj_order_management.xAxis = xAxis;
								this.bar_obj_order_management.values = values;
							}
							if (flag){
								this.get_nickname(this.bar_obj_order_management.xAxis,true);
							}
						});
			},
					// 获取销售数据统计折线图
			async get_list_sales_data() {
														let group_by_value = "trade_name";
				let data = {};
								let flag = false;
												await this.$get(
					"~/api/sales_data/get_list?groupby="+group_by_value,data,
					(json) => {
						if (json.result) {
							let list = json.result.list;
							let name_list = [];
							for (let i=0;i<list.length;i++){
								name_list.push(list[i].trade_name);
							}
							this.line_obj_sales_data.names = name_list;
							this.get_list_sales_data_sub("trade_name",flag);
						}
				});
																		},
			async get_list_sales_data_sub(v1,names_flag) {
									let data = {};
								let flag = false;
												await this.$get(
					"~/api/sales_data/get_list?groupby=reporting_month",data,
					(json) => {
						if (json.result) {
							let list = json.result.list;
							let xAxis_list = [];
							for (let i=0;i<list.length;i++){
												xAxis_list.push(list[i].reporting_month);
											}
							this.line_obj_sales_data.xAxis = xAxis_list;
							this.get_list_sales_data_sub_sub(v1,"reporting_month",names_flag,flag);
						}
				});
																							},
			async get_list_sales_data_sub_sub(v1,v2,names_flag,xAxis_flag) {
																			let data_str = "{\""+v1+"\":\"\",\""+v2+"\":\"\"}";
				let data = JSON.parse(data_str);
								for (let i=0;i<this.line_obj_sales_data.xAxis.length;i++){
					let list = []
					for (let j=0;j<this.line_obj_sales_data.names.length;j++){
						data[v2] = this.line_obj_sales_data.xAxis[i];
						data[v1] = this.line_obj_sales_data.names[j];
						await this.$get(
								"~/api/sales_data/sum?field=sales_volumes",
								data,
								(json) => {
									if (json.result) {
										list[j] = json.result;
									}else {
										list[j] = 0;
									}
								});
					}
					this.line_obj_sales_data.values.push(list)
				}
				if (names_flag){
					this.get_nickname(this.line_obj_sales_data.names,true);
				}
				if (xAxis_flag){
					this.get_nickname(this.line_obj_sales_data.xAxis,true);
				}
													},
	
		},
		computed:{
			recognitionHeight(){
				return "830px"
			},
			recognitionUrl(){
				return "https://www.faceplusplus.com.cn/${model.filter.recognitionType}/"
			}
		}
	};
</script>

<style scoped="scoped">
	.chart {
		display: block;
		width: 100%;
		height: 400px;
		padding: 1rem;
		position: relative;
	}

	.el-col {
		padding: 0.5rem;
	}

	.card {
		overflow: hidden;
	}

	.iframe_box ,.iframe_box_change{
		width: 100%;
		height: 1180px;
		position: relative;
		margin-top: 25px;
	}
	.iframe_box_change{
		height: 580px;
		padding-top: 50px;
	}
	.iframe_box	.iframe_box_content, .iframe_box_change .iframe_box_content{
		width: 100%;
		height: 100%;
	}
	.iframe_box_top{
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100px;
		font-size: 25px;
		line-height: 100px;
		background: #fff;
		z-index: 99999999;
		padding-left: 50px;
	}
	#iframe_box_face div::before {
		content: '';
		width: 100px;
		position: absolute;
		top: 154px;
		right: 129px;
		z-index: 999;
		height: 20px;
		background-color: #FFFFFF;
	}

	#iframe_box_face>h1 {
		margin-top: 100px;
		margin-bottom: 20px;
	}
</style>
