<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

			<el-col v-if="user_group === '管理员' || $check_field('get','store_name') || $check_field('add','store_name') || $check_field('set','store_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="店铺名称" prop="store_name">
					<el-input id="store_name" v-model="form['store_name']" placeholder="请输入店铺名称"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','store_name')) || (!form['commodity_center_id'] && $check_field('add','store_name'))" :disabled="disabledObj['store_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','store_name')">{{form['store_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','seller_customers') || $check_field('add','seller_customers') || $check_field('set','seller_customers')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="卖家用户" prop="seller_customers">
					<div v-if="user_group !== '管理员'">
						{{ get_user_session_seller_customers(form['seller_customers']) }}
						<el-select v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','seller_customers')) || (!form['commodity_center_id'] && $check_field('add','seller_customers'))" id="seller_customers" v-model="form['seller_customers']" :disabled="disabledObj['seller_customers_isDisabled']">
							<el-option v-for="o in list_user_seller_customers" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','seller_customers')" id="seller_customers" v-model="form['seller_customers']" :disabled="true">
							<el-option v-for="o in list_user_seller_customers" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
					</div>
					<el-select v-else id="seller_customers" v-model="form['seller_customers']" :disabled="disabledObj['seller_customers_isDisabled']">
						<el-option v-for="o in list_user_seller_customers" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
								   :value="o['user_id']">
						</el-option>
					</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','item_number') || $check_field('add','item_number') || $check_field('set','item_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品编号" prop="item_number">
					<el-input id="item_number" v-model="form['item_number']" placeholder="请输入商品编号"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','item_number')) || (!form['commodity_center_id'] && $check_field('add','item_number'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','item_number')">{{form['item_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','trade_name') || $check_field('add','trade_name') || $check_field('set','trade_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品名称" prop="trade_name">
					<el-input id="trade_name" v-model="form['trade_name']" placeholder="请输入商品名称"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','trade_name')) || (!form['commodity_center_id'] && $check_field('add','trade_name'))" :disabled="disabledObj['trade_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','trade_name')">{{form['trade_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','product_type') || $check_field('add','product_type') || $check_field('set','product_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品类型" prop="product_type">
					<el-input id="product_type" v-model="form['product_type']" placeholder="请输入商品类型"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','product_type')) || (!form['commodity_center_id'] && $check_field('add','product_type'))" :disabled="disabledObj['product_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_type')">{{form['product_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','product_specifications') || $check_field('add','product_specifications') || $check_field('set','product_specifications')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品规格" prop="product_specifications">
					<el-input id="product_specifications" v-model="form['product_specifications']" placeholder="请输入商品规格"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','product_specifications')) || (!form['commodity_center_id'] && $check_field('add','product_specifications'))" :disabled="disabledObj['product_specifications_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_specifications')">{{form['product_specifications']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','product_cover') || $check_field('add','product_cover') || $check_field('set','product_cover')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品封面" prop="product_cover">
					<el-upload :disabled="disabledObj['product_cover_isDisabled']" id="product_cover" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_product_cover"
						:show-file-list="false" v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','product_cover')) || (!form['commodity_center_id'] && $check_field('add','product_cover'))">
						<img v-if="form['product_cover']" :src="$fullUrl(form['product_cover'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','product_cover')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['product_cover'])" :preview-src-list="[$fullUrl(form['product_cover'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','commodity_inventory') || $check_field('add','commodity_inventory') || $check_field('set','commodity_inventory')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品库存" prop="commodity_inventory">
					<el-input-number id="commodity_inventory" v-model.number="form['commodity_inventory']"
						v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','commodity_inventory')) || (!form['commodity_center_id'] && $check_field('add','commodity_inventory'))" :disabled="disabledObj['commodity_inventory_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','commodity_inventory')">{{form['commodity_inventory']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','item_pricing') || $check_field('add','item_pricing') || $check_field('set','item_pricing')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品单价" prop="item_pricing">
					<el-input id="item_pricing" v-model="form['item_pricing']" placeholder="请输入商品单价"
							  v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','item_pricing')) || (!form['commodity_center_id'] && $check_field('add','item_pricing'))" :disabled="disabledObj['item_pricing_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_pricing')">{{form['item_pricing']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','product_details') || $check_field('add','product_details') || $check_field('set','product_details')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="商品详情" prop="product_details">
					<el-input type="textarea" id="product_details" v-model="form['product_details']" placeholder="请输入商品详情"
						v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','product_details')) || (!form['commodity_center_id'] && $check_field('add','product_details'))" :disabled="disabledObj['product_details_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_details')">{{form['product_details']}}</div>
				</el-form-item>
			</el-col>

			<el-col v-if="user_group === '管理员' || $check_field('get','expire_time') || $check_field('add','expire_time') || $check_field('set','expire_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="保质期" prop="expire_time">
					<el-date-picker id="expire_time" v-model="form['expire_time']" type="datetime" placeholder="选择自动下架时间" value-format="yyyy-MM-dd HH:mm:ss"
						v-if="user_group === '管理员' || (form['commodity_center_id'] && $check_field('set','expire_time')) || (!form['commodity_center_id'] && $check_field('add','expire_time'))" :disabled="disabledObj['expire_time_isDisabled']">
					</el-date-picker>
					<div v-else-if="$check_field('get','expire_time')">{{form['expire_time']}}</div>
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
				field: "commodity_center_id",
				url_add: "~/api/commodity_center/add?",
				url_set: "~/api/commodity_center/set?",
				url_get_obj: "~/api/commodity_center/get_obj?",
				url_upload: "~/api/commodity_center/upload?",

				query: {
					"commodity_center_id": 0,
				},

				form: {
					"store_name":  '', // 店铺名称
					"seller_customers": 0, // 卖家用户
					"item_number": this.$get_stamp(), // 商品编号
					"trade_name":  '', // 商品名称
					"product_type":  '', // 商品类型
					"product_specifications":  '', // 商品规格
					"product_cover":  '', // 商品封面
					"commodity_inventory":  0, // 商品库存
					"item_pricing":  '', // 商品单价
					"product_details":  '', // 商品详情
					"commodity_center_id": 0, // ID
					"expire_time": '', // 保质期
				},
				disabledObj:{
					"store_name_isDisabled": false,
					"seller_customers_isDisabled": false,
					"item_number_isDisabled": false,
					"trade_name_isDisabled": false,
					"product_type_isDisabled": false,
					"product_specifications_isDisabled": false,
					"product_cover_isDisabled": false,
					"commodity_inventory_isDisabled": false,
					"item_pricing_isDisabled": false,
					"product_details_isDisabled": false,
					"expire_time_isDisabled": false,
				},
				// 用户列表
				list_user_seller_customers: [],
				// 用户组
				group_user_seller_customers: "",
			}
		},
		methods: {
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
			 * 获取商家用户用户组
			 */
			async get_group_user_seller_customers() {
				this.form["seller_customers"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=商家用户");
				if(json.result && json.result.obj){
					this.group_user_seller_customers = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_seller_customers(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_seller_customers.source_table+"/get_obj?"
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
						_this.form["seller_customers"] = id
						_this.disabledObj['seller_customers' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "seller_customers") {
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
			 * 上传商品封面
			 * @param {Object} param 图片参数
			 */
			upload_product_cover(param){
				this.uploadFile(param.file, "product_cover");
			},
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
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
					bl = this.$check_action('/commodity_center/table','add');
				}
				if(!bl){
					bl = this.$check_action('/commodity_center/table','set');
				}
				if(!bl){
					bl = this.$check_action('/commodity_center/view','add');
				}
				if(!bl){
					bl = this.$check_action('/commodity_center/view','set');
				}
				if(!bl){
					bl = this.$check_action('/commodity_center/view','get');
				}
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
			this.get_group_user_seller_customers();
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