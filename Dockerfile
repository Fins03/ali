FROM debian
WORKDIR /my
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
RUN apt install -y curl wget sudo tar tzdata
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN wget https://github.moeyy.xyz/https://github.com/alist-org/alist/releases/download/v3.19.0/alist-linux-musl-amd64.tar.gz
RUN tar xf alist-linux-musl-amd64.tar.gz
COPY config.json /opt/alist/data/
COPY *.sh .
RUN chmod a+x my.sh
EXPOSE 5244
CMD ["./my.sh"]
