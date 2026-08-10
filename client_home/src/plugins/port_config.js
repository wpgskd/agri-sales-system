let host_config = "http://127.0.0.1:5000/";
export default host_config;

// ============================================================
// 【nginx 反向代理改造说明 - 不要删除该注释】
// 当前 host_config 写死为后端的绝对地址，部署到 nginx 后浏览器会因为跨域/CORS
// 或地址不对而无法访问后端。下面说明如何配合 nginx 反向代理，让前端统一走相对路径：
//
// 目标效果：
//   前端静态资源由 nginx 直接托管（client_home 打包后的 dist 目录），
//   所有形如 /api/xxx、/upload/xxx 的请求由 nginx 反代到真实后端
//   http://真实后端IP或域名:5000/api/xxx、http://真实后端IP或域名:5000/upload/xxx。
//
// 改法（仅改这一行即可，无需动其他源码）：
//   方案 A（同源部署，推荐）：把 host_config 改成空字符串
//     let host_config = "";
//     解释：$get/$post/$put/$upload/$download/$fullUrl 内部都做了
//     url = url.replace('~/', host) 与 url.replace('/', host) 替换，
//     当 host 为空时，'~/api/user/state' 会变成 '/api/user/state'，
//     浏览器发出同源相对路径请求，由 nginx 代理到后端，不会出现 CORS。
//
//   方案 B（保留域名前缀，但通过 nginx 代理同源）：
//     let host_config = "/";
//     解释：把 host 设为 "/" 也能让请求变成相对路径（避免写死端口），
//     与方案 A 行为几乎一致，可按团队习惯选用其中一种。
//
// 注意事项：
//   1. host 改成空串/"/" 之后，开发环境本地调试会请求当前 dev server 的
//      /api/...，所以 vue.config.js 中 devServer.proxy 必须把 /api 和 /upload
//      代理到后端（见 vue.config.js 注释）。
//   2. 不要在 host_config 中再写 "http://真实IP:5000/"，否则会绕过 nginx，
//      出现跨域或地址漂移问题。
// 
