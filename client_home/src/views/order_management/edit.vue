<template>
	<div class="diy_edit page_order_management" id="order_management_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
						<div v-if="$check_field('set','store_name') || $check_field('add','store_name') || $check_field('get','store_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								店铺名称:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_store_name" v-model="form['store_name']" placeholder="请输入店铺名称" v-if="(form['store_name'] && $check_field('set','store_name')) || (!form['store_name'] && $check_field('add','store_name'))"  :disabled="disabledObj['store_name_isDisabled']"/>
							<span v-else-if="$check_field('get','store_name')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','seller_customers') || $check_field('add','seller_customers') || $check_field('get','seller_customers')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								卖家用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_seller_customers" :disabled="disabledObj['seller_customers_isDisabled']" v-model="form['seller_customers']" v-if="(form['seller_customers'] && $check_field('set','seller_customers')) || (!form['seller_customers'] && $check_field('add','seller_customers'))" >
								<option v-for="o in list_user_seller_customers" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','seller_customers')">{{ form['seller_customers'] }}</span>
						</div>
					</div>
							<div v-if="$check_field('set','item_number') || $check_field('add','item_number') || $check_field('get','item_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								商品编号:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_item_number" v-model="form['item_number']" placeholder="请输入商品编号" v-if="(form['item_number'] && $check_field('set','item_number')) || (!form['item_number'] && $check_field('add','item_number'))"  :disabled="disabledObj['item_number_isDisabled']"/>
							<span v-else-if="$check_field('get','item_number')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','trade_name') || $check_field('add','trade_name') || $check_field('get','trade_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								商品名称:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_trade_name" v-model="form['trade_name']" placeholder="请输入商品名称" v-if="(form['trade_name'] && $check_field('set','trade_name')) || (!form['trade_name'] && $check_field('add','trade_name'))"  :disabled="disabledObj['trade_name_isDisabled']"/>
							<span v-else-if="$check_field('get','trade_name')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','product_type') || $check_field('add','product_type') || $check_field('get','product_type')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								商品类型:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_product_type" v-model="form['product_type']" placeholder="请输入商品类型" v-if="(form['product_type'] && $check_field('set','product_type')) || (!form['product_type'] && $check_field('add','product_type'))"  :disabled="disabledObj['product_type_isDisabled']"/>
							<span v-else-if="$check_field('get','product_type')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','item_pricing') || $check_field('add','item_pricing') || $check_field('get','item_pricing')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								商品单价:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_item_pricing" v-model="form['item_pricing']" placeholder="请输入商品单价" v-if="(form['item_pricing'] && $check_field('set','item_pricing')) || (!form['item_pricing'] && $check_field('add','item_pricing'))"  :disabled="disabledObj['item_pricing_isDisabled']"/>
							<span v-else-if="$check_field('get','item_pricing')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','purchase_user') || $check_field('add','purchase_user') || $check_field('get','purchase_user')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								购买用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_purchase_user" :disabled="disabledObj['purchase_user_isDisabled']" v-model="form['purchase_user']" v-if="(form['purchase_user'] && $check_field('set','purchase_user')) || (!form['purchase_user'] && $check_field('add','purchase_user'))" >
								<option v-for="o in list_user_purchase_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','purchase_user')">{{ form['purchase_user'] }}</span>
						</div>
					</div>
							<div v-if="$check_field('set','user_name') || $check_field('add','user_name') || $check_field('get','user_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								用户姓名:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_user_name" v-model="form['user_name']" placeholder="请输入用户姓名" v-if="(form['user_name'] && $check_field('set','user_name')) || (!form['user_name'] && $check_field('add','user_name'))"  :disabled="disabledObj['user_name_isDisabled']"/>
							<span v-else-if="$check_field('get','user_name')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','purchase_quantity') || $check_field('add','purchase_quantity') || $check_field('get','purchase_quantity')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								购买数量:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_purchase_quantity" v-model="form['purchase_quantity']" placeholder="请输入购买数量" v-if="(form['purchase_quantity'] && $check_field('set','purchase_quantity')) || (!form['purchase_quantity'] && $check_field('add','purchase_quantity'))"  :disabled="disabledObj['purchase_quantity_isDisabled']"/>
							<span v-else-if="$check_field('get','purchase_quantity')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','total_price') || $check_field('add','total_price') || $check_field('get','total_price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								合计总价:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_total_price" v-model="form['total_price']" placeholder="请输入合计总价" v-if="(form['total_price'] && $check_field('set','total_price')) || (!form['total_price'] && $check_field('add','total_price'))"  @focus="set_total_price()" :disabled="disabledObj['total_price_isDisabled']"/>
							<span v-else-if="$check_field('get','total_price')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','shipping_address') || $check_field('add','shipping_address') || $check_field('get','shipping_address')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								收货地址:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_shipping_address" v-model="form['shipping_address']" placeholder="请输入收货地址" v-if="(form['shipping_address'] && $check_field('set','shipping_address')) || (!form['shipping_address'] && $check_field('add','shipping_address'))"  :disabled="disabledObj['shipping_address_isDisabled']"/>
							<span v-else-if="$check_field('get','shipping_address')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','contact_information') || $check_field('add','contact_information') || $check_field('get','contact_information')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								联系方式:
							</span>
						</div>
								<!-- 文本 -->
									<div class="diy_field diy_text">
							<input type="text" id="form_contact_information" v-model="form['contact_information']" placeholder="请输入联系方式" v-if="(form['contact_information'] && $check_field('set','contact_information')) || (!form['contact_information'] && $check_field('add','contact_information'))"  :disabled="disabledObj['contact_information_isDisabled']"/>
							<span v-else-if="$check_field('get','contact_information')">{{ form['${obj.name}'] }}</span>
						</div>
										</div>
							<div v-if="$check_field('set','remarks') || $check_field('add','remarks') || $check_field('get','remarks')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								备注信息:
							</span>
						</div>
								<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_remarks" v-model="form['remarks']" v-if="(form['remarks'] && $check_field('set','remarks')) || (!form['remarks'] && $check_field('add','remarks'))" :disabled="disabledObj['remarks_isDisabled']" />
							<span v-else-if="$check_field('get','remarks')">{{ form['${obj.name}'] }}</span>
						</div>
							</div>
							<div v-if="$check_field('set','order_status') || $check_field('add','order_status') || $check_field('get','order_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								订单状态:
							</span>
						</div>
								<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_order_status" v-model="form['order_status']" v-if="(form['order_status'] && $check_field('set','order_status')) || (!form['order_status'] && $check_field('add','order_status'))" >
								<option v-for="o in list_order_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','order_status')">{{ form['order_status'] }}</span>
						</div>
							</div>
	




				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/order_management/get_obj?",
				url_add: "~/api/order_management/add?",
				url_set: "~/api/order_management/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
						"store_name": "",
							"seller_customers": 0,
							"item_number": "",
							"trade_name": "",
							"product_type": "",
							"item_pricing": "",
							"purchase_user": 0,
							"user_name": "",
							"purchase_quantity": "",
							"total_price": "",
							"shipping_address": "",
							"contact_information": "",
							"remarks": "",
							"order_status": "",
						"order_management_id": 0,
				},

				obj: {
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
						"order_management_id": 0,
				},

				// 表单字段
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
						"order_management_id": 0,
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
																		// 订单状态选项列表
				list_order_status: ['待发货','已发货'],
		
				// ID字段
				field: "order_management_id",

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
					async get_user_session_purchase_user(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=注册用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["purchase_user"] = user_id
								_this.disabledObj['purchase_user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
                  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                    for (var j = 0; j < arrForm.length; j++) {
                      if (arr[i] === arrForm[j]) {
                        if (arr[i] !== "purchase_user") {
                          _this.form[arrForm[j]] = res.result.obj[arr[i]]
                          _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                          break;
                        }
                      }
                    }
                  }
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
				
				
				
									set_total_price(){
				this.form.total_price = parseFloat(this.form.item_pricing) * parseFloat(this.form.purchase_quantity)
        let r = /^\+?[1-9][0-9]*$/; // 正整数
        if(!r.test(this.form.total_price) ){
          this.form.total_price = this.form.total_price.toFixed(2);
        }
			},
									
				
				
				
	
			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/order_management/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
        //   this.obj = $.push(this.obj ,form);
				// 	this.form = $.push(this.form ,form);
				// }
				// var arr = []
				// for (let key in form) {
				// 	arr.push(key)
				// }
				// for (var i=0;i<arr.length;i++){
				// 	this.disabledObj[arr[i] + '_isDisabled'] = true
				// }
        if (form) {
          var arr = []
          for (let key in form) {
            arr.push(key)
          }
          var arrForm = []
          for (let key in this.form) {
            arrForm.push(key)
          }
          for (var i=0;i<arr.length;i++){
            if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
              for (var j = 0; j < arrForm.length; j++) {
                if (arrForm[j] === arr[i]) {
                  this.form[arrForm[j]] = form[arr[i]]
                  this.obj[arrForm[j]] = form[arr[i]]
                  this.disabledObj[arrForm[j] + '_isDisabled'] = true
                  break;
                }
              }
            }
          }
        }
																												
        $.db.del("form");
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				// var form = $.db.get("form");
				// var obj = Object.assign({} ,form ,this.obj);
				// if (obj) {
        //   delete(obj.examine_state)
        //   delete(obj.examine_reply)
				// 	this.obj = $.push(this.obj ,obj);
				// }
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
				// 	this.form = $.push(this.form ,form);
				// }

				if(func){
					func(json);
				}
			},

		},
		created() {
									this.get_list_user_seller_customers();
																		this.get_user_session_purchase_user();
					this.get_list_user_purchase_user();
																								},
	}
</script>

<style>




</style>
