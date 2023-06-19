FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
ADD config.json /opt/alist/data/
WORKDIR /opt/alist/
CMD [ "./alist", "server", "--no-prefix" ]
