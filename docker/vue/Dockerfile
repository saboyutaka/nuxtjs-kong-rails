FROM node:9
LABEL maintainer "saboyutaka<yutaka.paradigm.shift@gmail.com>"

RUN mkdir -p /app
WORKDIR /app

RUN npm install -g npm && \
    npm install -g yarn

RUN npm install -g @vue/cli @vue/cli-init

ENTRYPOINT ["vue"]
