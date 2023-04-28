FROM ubuntu:latest
ENV container docker
RUN apt-get update && apt-get install -y bash-completion snapd file git vim build-essential g++-12-multilib-x86-64-linux-gnu
RUN git clone https://github.com/noaidi/conf.linux.git /root/.conf
RUN /root/.conf/install.sh
RUN systemctl enable snapd
STOPSIGNAL SIGRTMIN+3
CMD [ "/sbin/init" ]
