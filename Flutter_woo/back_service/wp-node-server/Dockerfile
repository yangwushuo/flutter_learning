# Use the official Node.js 10 image.
# https://hub.docker.com/_/node
# FROM node:14.19.1-alpine3.15
# 阿里镜像加速
FROM registry.cn-zhangjiakou.aliyuncs.com/ducafe/node:14.19.1-alpine3.15

# 工作目录
WORKDIR /usr/src/app

# 时区
ENV TZ Asia/Shanghai

# yarn 加速
ARG registry=https://registry.npm.taobao.org
ARG disturl=https://npm.taobao.org/dist
RUN yarn config set disturl $disturl
RUN yarn config set registry $registry

# 包配置
COPY package*.json ./

# 拉取包
RUN yarn --frozen-lockfile --production
# RUN npm install --only=production

# 复制项目代码
COPY . .

# fastify 配置
# ENV FASTIFY_ADDRESS = 0.0.0.0
ENV FASTIFY_PORT = 3000

# 端口
EXPOSE 3000

# 执行命令， docker run ... 可复写
CMD [ "npm", "start" ]
