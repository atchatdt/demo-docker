# syntax=docker/dockerfile:1
FROM node:14.16.0

ENV NODE_ENV=production

# tạo thư mục đặt app
WORKDIR /app

COPY ["package.json", "yarn.lock", "./"]

RUN yarn

COPY . .

EXPOSE 3000

CMD [ "yarn", "start" ]
