<template>
	<div class="diy_home diy_list diy_commodity_center" id="diy_commodity_center_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/commodity_center/details?commodity_center_id=' + o['commodity_center_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/commodity_center/details') && +item.is_img_list">
						<div class="diy_title diy_list_img_title">
							<span>{{item.title}}:</span>
						</div>
						<div class="diy_field diy_img">
							<img :src="$fullUrl(o[item.name])" style="width:100%;height:100%" />
						</div>
					</div>
				</div>
				<!-- 内容 -->
				<div class="diy_list_item_box">
					<div class="diy_list_item_content" v-for="(item,index) in showItemList" :key="item+index">
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/commodity_center/details') && +item.is_img_list">
							<div class="diy_title">
								<span>{{item.title}}:</span>
							</div>
							<div class="diy_field diy_text">
								<span v-if="item.type == 'UID'" v-text="get_user_name(item.name,o[item.name])"></span>
								<span v-else-if="item.type == '日期'" v-text="$toTime(o[item.name],'yyyy-MM-dd')"></span>
								<span v-else-if="item.type == '时间'" v-text="$toTime(o[item.name],'hh:mm:ss')"></span>
								<span v-else-if="item.type == '日长'" v-text="$toTime(o[item.name],'yyyy-MM-dd hh:mm:ss')"></span>
								<span v-else v-text="o[item.name]"></span>
							</div>
						</div>
					</div>
				</div>
			</router-link>
		</div>
		<!-- 表格 -->
		<div class="diy_view_table" v-else>
			<table class="diy_table">
				<tr class="diy_row">
						<th class="diy_title" v-if="$check_field('get','store_name')">
						店铺名称
					</th>
							<th class="diy_title" v-if="$check_field('get','seller_customers')">
						卖家用户
					</th>
							<th class="diy_title" v-if="$check_field('get','item_number')">
						商品编号
					</th>
							<th class="diy_title" v-if="$check_field('get','trade_name')">
						商品名称
					</th>
							<th class="diy_title" v-if="$check_field('get','product_type')">
						商品类型
					</th>
							<th class="diy_title" v-if="$check_field('get','product_specifications')">
						商品规格
					</th>
							<th class="diy_title" v-if="$check_field('get','product_cover')">
						商品封面
					</th>
							<th class="diy_title" v-if="$check_field('get','commodity_inventory')">
						商品库存
					</th>
							<th class="diy_title" v-if="$check_field('get','item_pricing')">
						商品单价
					</th>
							<th class="diy_title" v-if="$check_field('get','product_details')">
						商品详情
					</th>
					</tr>
				<tr class="diy_row" v-for="(o,i) in list" :key="o+i">
						<td class="diy_field diy_text" v-if="$check_field('get','store_name')">
						<span>
							{{ o["store_name"] }}
						</span>
					</td>
							<td class="diy_field diy_uid" v-if="$check_field('get','seller_customers')">
						<span>
							{{ get_user_name('seller_customers',o['seller_customers']) }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','item_number')">
						<span>
							{{ o["item_number"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','trade_name')">
						<span>
							{{ o["trade_name"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','product_type')">
						<span>
							{{ o["product_type"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','product_specifications')">
						<span>
							{{ o["product_specifications"] }}
						</span>
					</td>
							<td class="diy_field" v-if="$check_field('get','product_cover')">
						<img class="diy_img" :src="o['product_cover']" />
					</td>
							<td class="diy_field diy_number" v-if="$check_field('get','commodity_inventory')">
						<span>
							{{ o["commodity_inventory"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','item_pricing')">
						<span>
							{{ o["item_pricing"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','product_details')">
						<span>
							{{ o["product_details"] }}
						</span>
					</td>
					</tr>
			</table>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				},
			},
			show: {
				type: Boolean,
				default: function(){
					return true;
				}
			}
		},
		data() {
			return {
						imgList: [
						{
							title: "商品封面",
							name: "product_cover",
							type: "图片",
							is_img_list: "1"
						},
						],
						itemList: [
								{
									title: "店铺名称",
									name: "store_name",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "卖家用户",
									name: "seller_customers",
									type: "UID",
									is_img_list: "0"
								},
								{
									title: "商品编号",
									name: "item_number",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "商品名称",
									name: "trade_name",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "商品类型",
									name: "product_type",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "商品规格",
									name: "product_specifications",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "商品库存",
									name: "commodity_inventory",
									type: "数字",
									is_img_list: "0"
								},
								{
									title: "商品单价",
									name: "item_pricing",
									type: "文本",
									is_img_list: "1"
								},
						],
						richList: [
								{
									title: "商品详情",
									name: "product_details",
									type: "多文本"
								},
						],
						// 用户列表
				list_user_seller_customers: [],
												};
		},
		methods: {
			get_user_name(name,id){
				var obj = null;
						if (name == 'seller_customers'){
					obj = this.list_user_seller_customers.getObj({"user_id":id});
				}
													var ret = "";
				if(obj){
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
					/**
			 * 获取商家用户用户列表
			 */
			async get_list_user_seller_customers() {
				var json = await this.$get("~/api/user/get_list?user_group=商家用户");
				if(json.result && json.result.list){
					this.list_user_seller_customers = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
											},
		created() {
					this.get_list_user_seller_customers();
											},
		computed:{
			showItemList(){
				let arr = [];
				let _type = ["视频","音频","文件"];
				this.itemList.forEach(item => {
					if(_type.indexOf(item.type) === -1 && !!+item.is_img_list){
						arr.push(item)
					}
				})
				return arr.slice(0,4);
			}
		}
	};
</script>

<style scoped>
	.media {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		flex-basis: 75%;
		min-height: 10rem;
	}

	.goods {
		display: flex;
		width: calc(25% - 1rem);
		margin: 0.5rem;
		padding: 0.5rem;
		flex-direction: column;
		justify-content: space-between;
		background-color: white;
		border-radius: 0.5rem;
	}

	.goods:hover {
		border: 0.2rem solid #909399;
		box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.15);
	}

	.goods:hover img {
		filter: blur(1px);
	}

	.price {
		font-size: 1rem;
		margin-right: 3px;
	}

	.price_ago {
		text-decoration: line-through;
		font-size: 0.5rem;
		color: #999;

	}

	.title {
		word-break: break-all;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		font-weight: 700;
		padding: .25rem;
	}

	.icon_cart {
		color: #FF5722;
		float: right;
	}

	@media (max-width: 992px) {

		.goods {
			width: calc(33% - 1rem);
			;
		}

	}

	@media (max-width: 768px) {

		.goods {
			width: calc(50% - 1rem);
			;
		}

	}
</style>

