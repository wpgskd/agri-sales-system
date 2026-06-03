<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>

				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="新闻资讯"
				source_table="article"
			  ></list_result_search>


						  <list_result_search
				v-if="$check_action('/registered_users/list', 'get')"
				:list="result_registered_users_user_name"
				title="注册用户用户姓名"
				source_table="registered_users"
			  ></list_result_search>
															  <list_result_search
				v-if="$check_action('/merchant_users/list', 'get')"
				:list="result_merchant_users_store_name"
				title="商家用户店铺名称"
				source_table="merchant_users"
			  ></list_result_search>
								  <list_result_search
				v-if="$check_action('/merchant_users/list', 'get')"
				:list="result_merchant_users_sellers_name"
				title="商家用户卖家姓名"
				source_table="merchant_users"
			  ></list_result_search>
									  <list_result_search
				v-if="$check_action('/commodity_classification/list', 'get')"
				:list="result_commodity_classification_product_type"
				title="商品分类商品类型"
				source_table="commodity_classification"
			  ></list_result_search>
									  <list_result_search
				v-if="$check_action('/commodity_center/list', 'get')"
				:list="result_commodity_center_store_name"
				title="商品中心店铺名称"
				source_table="commodity_center"
			  ></list_result_search>
														  <list_result_search
				v-if="$check_action('/commodity_center/list', 'get')"
				:list="result_commodity_center_trade_name"
				title="商品中心商品名称"
				source_table="commodity_center"
			  ></list_result_search>
								  <list_result_search
				v-if="$check_action('/commodity_center/list', 'get')"
				:list="result_commodity_center_product_type"
				title="商品中心商品类型"
				source_table="commodity_center"
			  ></list_result_search>
																								  <list_result_search
				v-if="$check_action('/order_management/list', 'get')"
				:list="result_order_management_store_name"
				title="订单管理店铺名称"
				source_table="order_management"
			  ></list_result_search>
														  <list_result_search
				v-if="$check_action('/order_management/list', 'get')"
				:list="result_order_management_trade_name"
				title="订单管理商品名称"
				source_table="order_management"
			  ></list_result_search>
								  <list_result_search
				v-if="$check_action('/order_management/list', 'get')"
				:list="result_order_management_product_type"
				title="订单管理商品类型"
				source_table="order_management"
			  ></list_result_search>
																																  <list_result_search
				v-if="$check_action('/order_management/list', 'get')"
				:list="result_order_management_order_status"
				title="订单管理订单状态"
				source_table="order_management"
			  ></list_result_search>
																			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
						"result_registered_users_user_name":[],
															"result_merchant_users_store_name":[],
								"result_merchant_users_sellers_name":[],
									"result_commodity_classification_product_type":[],
									"result_commodity_center_store_name":[],
														"result_commodity_center_trade_name":[],
								"result_commodity_center_product_type":[],
																								"result_order_management_store_name":[],
														"result_order_management_trade_name":[],
								"result_order_management_product_type":[],
																																"result_order_management_order_status":[],
																	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},

				/**
	 * 获取user_name
	 */
	get_registered_users_user_name(){
		let url = "~/api/registered_users/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "user_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_registered_users_user_name = json.result.list;
			result_registered_users_user_name.map(o => o.title = o['user_name'])
	  			this.result_registered_users_user_name = result_registered_users_user_name
		 	}
		});
	},
													/**
	 * 获取store_name
	 */
	get_merchant_users_store_name(){
		let url = "~/api/merchant_users/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "store_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_merchant_users_store_name = json.result.list;
			result_merchant_users_store_name.map(o => o.title = o['store_name'])
	  			this.result_merchant_users_store_name = result_merchant_users_store_name
		 	}
		});
	},
						/**
	 * 获取sellers_name
	 */
	get_merchant_users_sellers_name(){
		let url = "~/api/merchant_users/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "sellers_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_merchant_users_sellers_name = json.result.list;
			result_merchant_users_sellers_name.map(o => o.title = o['sellers_name'])
	  			this.result_merchant_users_sellers_name = result_merchant_users_sellers_name
		 	}
		});
	},
							/**
	 * 获取product_type
	 */
	get_commodity_classification_product_type(){
		let url = "~/api/commodity_classification/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "product_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_commodity_classification_product_type = json.result.list;
			result_commodity_classification_product_type.map(o => o.title = o['product_type'])
	  			this.result_commodity_classification_product_type = result_commodity_classification_product_type
		 	}
		});
	},
							/**
	 * 获取store_name
	 */
	get_commodity_center_store_name(){
		let url = "~/api/commodity_center/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "store_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_commodity_center_store_name = json.result.list;
			result_commodity_center_store_name.map(o => o.title = o['store_name'])
	  			this.result_commodity_center_store_name = result_commodity_center_store_name
		 	}
		});
	},
												/**
	 * 获取trade_name
	 */
	get_commodity_center_trade_name(){
		let url = "~/api/commodity_center/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "trade_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_commodity_center_trade_name = json.result.list;
			result_commodity_center_trade_name.map(o => o.title = o['trade_name'])
	  			this.result_commodity_center_trade_name = result_commodity_center_trade_name
		 	}
		});
	},
						/**
	 * 获取product_type
	 */
	get_commodity_center_product_type(){
		let url = "~/api/commodity_center/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "product_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_commodity_center_product_type = json.result.list;
			result_commodity_center_product_type.map(o => o.title = o['product_type'])
	  			this.result_commodity_center_product_type = result_commodity_center_product_type
		 	}
		});
	},
																						/**
	 * 获取store_name
	 */
	get_order_management_store_name(){
		let url = "~/api/order_management/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "store_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_order_management_store_name = json.result.list;
			result_order_management_store_name.map(o => o.title = o['store_name'])
	  			this.result_order_management_store_name = result_order_management_store_name
		 	}
		});
	},
												/**
	 * 获取trade_name
	 */
	get_order_management_trade_name(){
		let url = "~/api/order_management/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "trade_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_order_management_trade_name = json.result.list;
			result_order_management_trade_name.map(o => o.title = o['trade_name'])
	  			this.result_order_management_trade_name = result_order_management_trade_name
		 	}
		});
	},
						/**
	 * 获取product_type
	 */
	get_order_management_product_type(){
		let url = "~/api/order_management/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "product_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_order_management_product_type = json.result.list;
			result_order_management_product_type.map(o => o.title = o['product_type'])
	  			this.result_order_management_product_type = result_order_management_product_type
		 	}
		});
	},
																														/**
	 * 获取order_status
	 */
	get_order_management_order_status(){
		let url = "~/api/order_management/get_list?like=0";
				this.$get(url, { page: 1, size: 10, "order_status": this.query.word }, (json) => {
		  if (json.result) {
			var result_order_management_order_status = json.result.list;
			result_order_management_order_status.map(o => o.title = o['order_status'])
	  			this.result_order_management_order_status = result_order_management_order_status
		 	}
		});
	},
																
  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
					this.get_registered_users_user_name();
														this.get_merchant_users_store_name();
							this.get_merchant_users_sellers_name();
								this.get_commodity_classification_product_type();
								this.get_commodity_center_store_name();
													this.get_commodity_center_trade_name();
							this.get_commodity_center_product_type();
																							this.get_order_management_store_name();
													this.get_order_management_trade_name();
							this.get_order_management_product_type();
																															this.get_order_management_order_status();
																  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
				  this.get_registered_users_user_name();
													  this.get_merchant_users_store_name();
						  this.get_merchant_users_sellers_name();
							  this.get_commodity_classification_product_type();
							  this.get_commodity_center_store_name();
												  this.get_commodity_center_trade_name();
						  this.get_commodity_center_product_type();
																						  this.get_order_management_store_name();
												  this.get_order_management_trade_name();
						  this.get_order_management_product_type();
																														  this.get_order_management_order_status();
																	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
