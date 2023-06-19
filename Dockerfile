FROM alpine:3.18
WORKDIR /opt/alist/
ADD config.json /opt/alist/data/
RUN apk add --no-cache bash curl gcc git go musl-dev wegt tar tzdata; 
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#RUN pip3 install aligo flask apscheduler flask_sqlalchemy
#RUN git clone https://github.moeyy.xyz/https://github.com/Biubush/alys
RUN curl -s https://github.com/alist-org/alist/releases/download/v3.19.0/alist-linux-musl-amd64.tar.gz
RUN tar -zxvf alist-linux-musl-amd64.tar.gz && chmod +x alist && ls -l
#RUN adduser --disabled-password --gecos '' admin
#RUN adduser admin sudo
#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN chown -R admin:admin /alys
#RUN chmod -R 777 /alys
#RUN chown -R admin:admin /home
#RUN chmod -R 777 /home
#USER admin
EXPOSE 5244
#RUN cd alist && ls && chmod +x alist && ./alist server --no-prefix
#RUN cd alys_v0.0.54_linux_amd64 && chmod +x alys && ./alys
CMD [ "./alist", "server", "--no-prefix" ]
