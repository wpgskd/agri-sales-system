<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','store_name') || $check_field('add','store_name') || $check_field('set','store_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="店铺名称" prop="store_name">
												<el-input id="store_name" v-model="form['store_name']" placeholder="请输入店铺名称"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','store_name')) || (!form['order_management_id'] && $check_field('add','store_name'))" :disabled="disabledObj['store_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','store_name')">{{form['store_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','seller_customers') || $check_field('add','seller_customers') || $check_field('set','seller_customers')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="卖家用户" prop="seller_customers">
													<el-select v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','seller_customers')) || (!form['order_management_id'] && $check_field('add','seller_customers'))" id="seller_customers" v-model="form['seller_customers']" :disabled="disabledObj['seller_customers_isDisabled']">
							<el-option v-for="o in list_user_seller_customers" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','seller_customers')" id="seller_customers" v-model="form['seller_customers']" :disabled="true">
							<el-option v-for="o in list_user_seller_customers" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','item_number') || $check_field('add','item_number') || $check_field('set','item_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品编号" prop="item_number">
												<el-input id="item_number" v-model="form['item_number']" placeholder="请输入商品编号"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','item_number')) || (!form['order_management_id'] && $check_field('add','item_number'))" :disabled="disabledObj['item_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_number')">{{form['item_number']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','trade_name') || $check_field('add','trade_name') || $check_field('set','trade_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品名称" prop="trade_name">
												<el-input id="trade_name" v-model="form['trade_name']" placeholder="请输入商品名称"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','trade_name')) || (!form['order_management_id'] && $check_field('add','trade_name'))" :disabled="disabledObj['trade_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','trade_name')">{{form['trade_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','product_type') || $check_field('add','product_type') || $check_field('set','product_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品类型" prop="product_type">
												<el-input id="product_type" v-model="form['product_type']" placeholder="请输入商品类型"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','product_type')) || (!form['order_management_id'] && $check_field('add','product_type'))" :disabled="disabledObj['product_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_type')">{{form['product_type']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','item_pricing') || $check_field('add','item_pricing') || $check_field('set','item_pricing')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品单价" prop="item_pricing">
												<el-input id="item_pricing" v-model="form['item_pricing']" placeholder="请输入商品单价"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','item_pricing')) || (!form['order_management_id'] && $check_field('add','item_pricing'))" :disabled="disabledObj['item_pricing_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_pricing')">{{form['item_pricing']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','purchase_user') || $check_field('add','purchase_user') || $check_field('set','purchase_user')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="购买用户" prop="purchase_user">
																		<div v-if="user_group !== '管理员'">
							{{ get_user_session_purchase_user(form['purchase_user']) }}
							<!--<el-input id="business_name" v-model="form['purchase_user']" placeholder="请输入购买用户"-->
							<!--v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','purchase_user')) || (!form['order_management_id'] && $check_field('add','purchase_user'))" :disabled="disabledObj['purchase_user_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','purchase_user')">{{form['purchase_user']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','purchase_user')) || (!form['order_management_id'] && $check_field('add','purchase_user'))" id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','purchase_user')" id="purchase_user" v-model="form['purchase_user']" :disabled="true">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
							<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
																</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户姓名" prop="user_name">
												<el-input id="user_name" v-model="form['user_name']" placeholder="请输入用户姓名"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','user_name')) || (!form['order_management_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','purchase_quantity') || $check_field('add','purchase_quantity') || $check_field('set','purchase_quantity')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="购买数量" prop="purchase_quantity">
												<el-input id="purchase_quantity" v-model="form['purchase_quantity']" placeholder="请输入购买数量"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','purchase_quantity')) || (!form['order_management_id'] && $check_field('add','purchase_quantity'))" :disabled="disabledObj['purchase_quantity_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','purchase_quantity')">{{form['purchase_quantity']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','total_price') || $check_field('add','total_price') || $check_field('set','total_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="合计总价" prop="total_price">
												<el-input id="total_price" v-model="form['total_price']" placeholder="请输入合计总价"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','total_price')) || (!form['order_management_id'] && $check_field('add','total_price'))"  @focus="set_total_price()" :disabled="disabledObj['total_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','total_price')">{{form['total_price']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','shipping_address') || $check_field('add','shipping_address') || $check_field('set','shipping_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="收货地址" prop="shipping_address">
												<el-input id="shipping_address" v-model="form['shipping_address']" placeholder="请输入收货地址"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','shipping_address')) || (!form['order_management_id'] && $check_field('add','shipping_address'))" :disabled="disabledObj['shipping_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','shipping_address')">{{form['shipping_address']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_information') || $check_field('add','contact_information') || $check_field('set','contact_information')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系方式" prop="contact_information">
												<el-input id="contact_information" v-model="form['contact_information']" placeholder="请输入联系方式"
							  v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','contact_information')) || (!form['order_management_id'] && $check_field('add','contact_information'))" :disabled="disabledObj['contact_information_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_information')">{{form['contact_information']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','remarks') || $check_field('add','remarks') || $check_field('set','remarks')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="备注信息" prop="remarks">
								<el-input type="textarea" id="remarks" v-model="form['remarks']" placeholder="请输入备注信息"
						v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','remarks')) || (!form['order_management_id'] && $check_field('add','remarks'))" :disabled="disabledObj['remarks_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','remarks')">{{form['remarks']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','order_status') || $check_field('add','order_status') || $check_field('set','order_status')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="订单状态" prop="order_status">
								<el-select id="order_status" v-model="form['order_status']"
						v-if="user_group === '管理员' || (form['order_management_id'] && $check_field('set','order_status')) || (!form['order_management_id'] && $check_field('add','order_status'))">
						<el-option v-for="o in list_order_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','order_status')">{{form['order_status']}}</div>
							</el-form-item>
			</el-col>
					
	
	
	
	
	
	
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "order_management_id",
				url_add: "~/api/order_management/add?",
				url_set: "~/api/order_management/set?",
				url_get_obj: "~/api/order_management/get_obj?",
				url_upload: "~/api/order_management/upload?",

				query: {
					"order_management_id": 0,
				},

				form: {
								"store_name":  '', // 店铺名称
										"seller_customers": 0, // 卖家用户
										"item_number":  '', // 商品编号
										"trade_name":  '', // 商品名称
										"product_type":  '', // 商品类型
										"item_pricing":  '', // 商品单价
										"purchase_user": 0, // 购买用户
										"user_name":  '', // 用户姓名
										"purchase_quantity":  '', // 购买数量
										"total_price":  '', // 合计总价
										"shipping_address":  '', // 收货地址
										"contact_information":  '', // 联系方式
										"remarks":  '', // 备注信息
										"order_status":  '', // 订单状态
											"order_management_id": 0, // ID
						
				},
				disabledObj:{
								"store_name_isDisabled": false,
										"seller_customers_isDisabled": false,
										"item_number_isDisabled": false,
										"trade_name_isDisabled": false,
										"product_type_isDisabled": false,
										"item_pricing_isDisabled": false,
										"purchase_user_isDisabled": false,
										"user_name_isDisabled": false,
										"purchase_quantity_isDisabled": false,
										"total_price_isDisabled": false,
										"shipping_address_isDisabled": false,
										"contact_information_isDisabled": false,
										"remarks_isDisabled": false,
										"order_status_isDisabled": false,
										},

	
		
					// 用户列表
				list_user_seller_customers: [],
				
		
		
		
		
					// 用户列表
				list_user_purchase_user: [],
						// 用户组
				group_user_purchase_user: "",
				
		
		
		
		
		
						// 订单状态选项列表
				list_order_status: ['待发货','已发货'],
	
	
			}
		},
		methods: {


	
	
			
	
				/**
			 * 获取商家用户用户列表
			 */
			async get_list_user_seller_customers() {
                // if(this.user_group !== "管理员" && this.form["seller_customers"] === 0) {
                //     this.form["seller_customers"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=商家用户");
                if(json.result && json.result.list){
                    this.list_user_seller_customers = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_seller_customers(id){
				var obj = this.list_user_seller_customers.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
			
	
			
	
				/**
			 * 获取注册用户用户列表
			 */
			async get_list_user_purchase_user() {
                // if(this.user_group !== "管理员" && this.form["purchase_user"] === 0) {
                //     this.form["purchase_user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=注册用户");
                if(json.result && json.result.list){
                    this.list_user_purchase_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					/**
			 * 获取注册用户用户组
			 */
			async get_group_user_purchase_user() {
							this.form["purchase_user"] = this.user.user_id;
							var json = await this.$get("~/api/user_group/get_obj?name=注册用户");
				if(json.result && json.result.obj){
					this.group_user_purchase_user = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_purchase_user(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_purchase_user.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
									for (let key in _this.form) {
							arrForm.push(key)
						}
												_this.form["purchase_user"] = id
									_this.disabledObj['purchase_user' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "purchase_user") {
			                      _this.form[arrForm[j]] = res.result.obj[arr[i]]
			                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								  break;
								} else {
								  _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								}
							  }
							}
						  }
						}
					}
				});
			},
					get_user_purchase_user(id){
				var obj = this.list_user_purchase_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
										set_total_price(){
				this.form.total_price = parseFloat(this.form.item_pricing) * parseFloat(this.form.purchase_quantity)
			},
							
	
			
	
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
										// 获取缓存数据附加
				form = $.db.get("form");
							$.push(this.form ,form);
								
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
																																$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


																																										


			},

			/**
			 * 提交前验证事件
			 * @param {Object} 请求参数
			 * @return {String} 验证成功返回null, 失败返回错误提示
			 */
			submit_check(param) {
				let msg = null
																																																return msg;
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/order_management/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/order_management/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/order_management/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/order_management/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/order_management/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
							this.get_list_user_seller_customers();
																this.get_list_user_purchase_user();
					this.get_group_user_purchase_user();
																			},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}




</style>
