<template>
	<div class="diy_home diy_list diy_order_management" id="diy_order_management_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/order_management/details?order_management_id=' + o['order_management_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/order_management/details') && +item.is_img_list">
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
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/order_management/details') && +item.is_img_list">
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
							<th class="diy_title" v-if="$check_field('get','item_pricing')">
						商品单价
					</th>
							<th class="diy_title" v-if="$check_field('get','purchase_user')">
						购买用户
					</th>
							<th class="diy_title" v-if="$check_field('get','user_name')">
						用户姓名
					</th>
							<th class="diy_title" v-if="$check_field('get','purchase_quantity')">
						购买数量
					</th>
							<th class="diy_title" v-if="$check_field('get','total_price')">
						合计总价
					</th>
							<th class="diy_title" v-if="$check_field('get','shipping_address')">
						收货地址
					</th>
							<th class="diy_title" v-if="$check_field('get','contact_information')">
						联系方式
					</th>
							<th class="diy_title" v-if="$check_field('get','remarks')">
						备注信息
					</th>
							<th class="diy_title" v-if="$check_field('get','order_status')">
						订单状态
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
							<td class="diy_field diy_text" v-if="$check_field('get','item_pricing')">
						<span>
							{{ o["item_pricing"] }}
						</span>
					</td>
							<td class="diy_field diy_uid" v-if="$check_field('get','purchase_user')">
						<span>
							{{ get_user_name('purchase_user',o['purchase_user']) }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','user_name')">
						<span>
							{{ o["user_name"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','purchase_quantity')">
						<span>
							{{ o["purchase_quantity"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','total_price')">
						<span>
							{{ o["total_price"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','shipping_address')">
						<span>
							{{ o["shipping_address"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','contact_information')">
						<span>
							{{ o["contact_information"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','remarks')">
						<span>
							{{ o["remarks"] }}
						</span>
					</td>
							<td class="diy_field diy_text" v-if="$check_field('get','order_status')">
						<span>
							{{ o["order_status"] }}
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
						],
						itemList: [
								{
									title: "店铺名称",
									name: "store_name",
									type: "文本",
									is_img_list: "0"
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
									is_img_list: "0"
								},
								{
									title: "商品类型",
									name: "product_type",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "商品单价",
									name: "item_pricing",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "购买用户",
									name: "purchase_user",
									type: "UID",
									is_img_list: "0"
								},
								{
									title: "用户姓名",
									name: "user_name",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "购买数量",
									name: "purchase_quantity",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "合计总价",
									name: "total_price",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "收货地址",
									name: "shipping_address",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "联系方式",
									name: "contact_information",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "订单状态",
									name: "order_status",
									type: "下拉",
									is_img_list: "0"
								},
						],
						richList: [
								{
									title: "备注信息",
									name: "remarks",
									type: "多文本"
								},
						],
						// 用户列表
				list_user_seller_customers: [],
										// 用户列表
				list_user_purchase_user: [],
											};
		},
		methods: {
			get_user_name(name,id){
				var obj = null;
						if (name == 'seller_customers'){
					obj = this.list_user_seller_customers.getObj({"user_id":id});
				}
										if (name == 'purchase_user'){
					obj = this.list_user_purchase_user.getObj({"user_id":id});
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
									/**
			 * 获取注册用户用户列表
			 */
			async get_list_user_purchase_user() {
				var json = await this.$get("~/api/user/get_list?user_group=注册用户");
				if(json.result && json.result.list){
					this.list_user_purchase_user = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
										},
		created() {
					this.get_list_user_seller_customers();
									this.get_list_user_purchase_user();
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

