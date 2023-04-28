FROM noaidi/score:arm64
ENV container docker
RUN systemctl enable snapd
STOPSIGNAL SIGRTMIN+3
CMD [ "/sbin/init" ]
