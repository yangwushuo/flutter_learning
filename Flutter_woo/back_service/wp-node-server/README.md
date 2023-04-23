# wp + woo + fastify server

## docker build

```sh
docker pull node:14.19.1-alpine3.15
docker tag node:14.19.1-alpine3.15 registry.cn-zhangjiakou.aliyuncs.com/ducafe/node:14.19.1-alpine3.15
docker push registry.cn-zhangjiakou.aliyuncs.com/ducafe/node:14.19.1-alpine3.15

docker build -t registry.cn-zhangjiakou.aliyuncs.com/ducafe/wpapi-server-nodejs:latest .
docker push registry.cn-zhangjiakou.aliyuncs.com/ducafe/wpapi-server-nodejs:latest
```
