FROM ubuntu
RUN ["apt-get","-y","update"]
RUN ["apt-get","install","-y","cowsay"]
RUN ["apt-get","install","-y","fortune"]
COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
