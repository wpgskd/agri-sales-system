<template>
	<div class="diy_list page_commodity_center" id="commodity_center_list">
		<div class="warp">
			<div class="container diy_list_container">
				<div class="diy_list_title">
					<div class="col">
						<span class="title">商品中心列表</span>
					</div>
				</div>
				<div class="row diy_list_search">
					<div class="col">
						<!-- 搜索栏 -->
						<div class="view">
							<span class="diy_list_search_title">关键字搜索：</span>
								<b-form-input size="sm" class="mr-sm-2" placeholder="店铺名称搜索" v-model="query['store_name']" />
											<b-form-input size="sm" class="mr-sm-2" placeholder="商品名称搜索" v-model="query['trade_name']" />
									<b-form-input size="sm" class="mr-sm-2" placeholder="商品类型搜索" v-model="query['product_type']" />
													<b-button size="sm" @click="search()" >
								<b-icon icon="search"/>
							</b-button>
						</div>
						<!-- /搜索栏 -->
					</div>
				</div>
				<div class="diy_list_select_box">
					<span class="diy_list_select_title">下拉搜索：</span>
						<div class="diy_list_dropdown_box">
						<div class="col">
							<!-- 筛选 -->
							<div class="view">
																										</div>
							<!-- /筛选 -->
						</div>
					</div>
					<div class="diy_list_sort_box">
						<div class="col">
							<!-- 排序 -->
							<div class="view">
								<b-dropdown text="排序" variant="outline-dark" left>
										<b-dropdown-item v-for="(o, i) in list_sort" :key="i" @click="set_sort(o)" >
												{{ o.name }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!--/排序 -->
						</div>
					</div>
				</div>

				<div class="row diy_list_box">
					<div class="col">
						<!-- 列表 -->
						<list_commodity_center :list="list" />
						<!-- /列表 -->
					</div>
				</div>
				<div class="row diy_list_page_box">
					<div class="col overflow-auto flex_cc">
						<!-- 分页器 -->
<!--						<diy_pager v-model="query['page']" :size="query['size']" :count="count" v-on:toPage="toPage" v-on:toSize="toSize" ></diy_pager>-->
            <b-pagination
                v-model="query.page"
                :total-rows="count"
                :per-page="query.size"
                @change="goToPage"
            />
						<!-- /分页器 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import list_commodity_center from "@/components/diy/list_commodity_center.vue";
	import diy_pager from "@/components/diy/diy_pager";
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		components: {
			diy_pager,
			list_commodity_center
		},
		data() {
			return {
				url_get_list: "~/api/commodity_center/get_list?like=0",

				// 查询条件
				query: {
					keyword: "",
					page: 1,
					size: 10,
								"store_name": "", // 店铺名称
													"trade_name": "", // 商品名称
											"product_type": "", // 商品类型
												},

				// 排序内容
				list_sort: [{
						name: "创建时间从高到低",
						value: "create_time desc",
					},
					{
						name: "创建时间从低到高",
						value: "create_time asc",
					},
					{
						name: "更新时间从高到低",
						value: "update_time desc",
					},
					{
						name: "更新时间从低到高",
						value: "update_time asc",
					},
						{
						name: "店铺名称正序",
						value: "store_name asc",
					},
					{
						name: "店铺名称倒序",
						value: "store_name desc",
					},
									{
						name: "商品名称正序",
						value: "trade_name asc",
					},
					{
						name: "商品名称倒序",
						value: "trade_name desc",
					},
							{
						name: "商品类型正序",
						value: "product_type asc",
					},
					{
						name: "商品类型倒序",
						value: "product_type desc",
					},
										],

																				
			}
		},
		methods: {
      get_list_before(param) {
      },
/**
			 * 获取列表数据之后执行的过滤逻辑（自动下架核心代码）
			 */
			/**
			 * 获取列表数据之后执行的过滤逻辑（自动下架核心代码）
			 */
			get_list_after(json) {
				let now = new Date().getTime(); // 获取当前时间的毫秒数
				
				// 核心过滤逻辑函数（防弹版，不会白屏）
				let filterFunc = (item) => {
					if (!item || !item.expire_time) return true;
					try {
						// 强转成字符串再处理，防止出错
						let expireTime = new Date(String(item.expire_time).replace(/-/g, "/")).getTime();
						return expireTime > now;
					} catch(e) {
						return true; // 万一格式不对，为了不让页面崩溃，先放行
					}
				};

				// 1. 拦截并过滤接口返回的原始数据
				if (json && json.result && json.result.list) {
					json.result.list = json.result.list.filter(filterFunc);
				}
				// 2. 拦截并过滤页面绑定的列表数据
				if (this.list && this.list.length > 0) {
					this.list = this.list.filter(filterFunc);
				}
			}, // 👈 注意最后这个逗号一定要有
			/**
			 * 筛选选择
			 */
			filter_set(o,key) {
			    if (o == "全部") {
			        this.query[key] = "";
			    } else {
			        this.query[key] = o;
			    }
			    this.search();
			},

			/**
			 * 排序
			 */
			set_sort(o) {
			    this.query.orderby = o.value;
			    this.search();
			},


										
			/**
			 * 筛选
			 */
																												/**
			 * 重置
			 */
			reset() {
							this.query.store_name = ""
												this.query.trade_name = ""
										this.query.product_type = ""
												this.search();
			},

			// 返回条数
			toSize(i){
				this.query.size = i;
				this.first();
			},

			// 返回页数
			toPage(i){
				this.query.page = i;
				this.first();
			},

      goToPage(v){
        this.query.page = v;
        this.goToNew(v)
      },

		},
		computed: {
		},
		created() {
																						}
	}
</script>

<style>
</style>
