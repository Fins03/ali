FROM debian
WORKDIR /opt/alist/
ADD config.json /opt/alist/data/
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
#&& apt-get install -y python3-pip && pip3 install --upgrade pip
RUN apt install -y curl wget sudo tar tzdata
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#RUN pip3 install aligo flask apscheduler flask_sqlalchemy
#RUN git clone https://github.moeyy.xyz/https://github.com/Biubush/alys
RUN wget https://github.com/alist-org/alist/releases/download/v3.19.0/alist-linux-musl-amd64.tar.gz
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
