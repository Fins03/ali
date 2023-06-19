FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
ADD config.json /opt/alist/data/
EXPOSE 5244
WORKDIR /opt/alist/
CMD [ "./alist", "server", "--no-prefix" ]
