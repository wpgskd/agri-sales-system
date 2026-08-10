module.exports = {
    devServer: {
        port: 8081
    }
}

// ============================================================
// 【nginx 反向代理改造说明 - 不要删除该注释】
// devServer 启动后浏览器访问 http://localhost:8081/，当前没有配置 proxy，
// 所以所有 /api/xxx、/upload/xxx 请求都会直接打到 8081 端口的 dev server，
// 显然访问不到 5000 端口的后端。
//
// 改法（仅在 devServer 内追加 proxy 字段，不要动上面的 port）：
//   module.exports = {
//       devServer: {
//           port: 8081,
//           proxy: {
//               '/api': {
//                   target: 'http://127.0.0.1:5000',
//                   changeOrigin: true,
//                   // ws: false   // 后端不是 websocket，按需开启
//               },
//               '/upload': {
//                   target: 'http://127.0.0.1:5000',
//                   changeOrigin: true
//               }
//           }
//       }
//   }
//
// 解释：
//   1. /api  -> 代理到本地后端 5000 端口的 /api
//      对应后端 application.yml 中的 context-path: /api
//   2. /upload -> 代理到本地后端 5000 端口的 /upload
//      对应后端 application.yml 中的 static-path-pattern: /upload/**
//   3. changeOrigin: true 会把请求头 Host 改成 target 的地址，避免某些
//      后端做域名校验时拒绝。
//
// 配合 port_config.js 的改造：
//   上面那一步让 host_config 变成空串/"/"，于是浏览器会发相对路径请求
//   /api/xxx、/upload/xxx；dev 时由本配置里的 devServer.proxy 转发到 5000，
//   部署后由 nginx 的 location /api/、location /upload/ 转发到 5000，
//   两端行为一致，前端代码不用再改。
// ============================================================
