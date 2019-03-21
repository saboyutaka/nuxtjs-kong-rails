FROM kong:0.13-centos
LABEL maintainer "yutaka.paradigm.shift@gmail.com"

RUN yum install -y epel-release && \
    yum install -y postgresql

CMD ["kong", "start"]
