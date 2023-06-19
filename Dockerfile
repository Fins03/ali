FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
ADD config.json /opt/alist/data/
WORKDIR /opt/alist/
EXPOSE map[5244/tcp:{}]
CMD [ "./alist", "server", "--no-prefix" ]
