FROM ubuntu
RUN ["apt-get","-y","update"]
RUN ["apt-get","install","-y","nmap"]
ENTRYPOINT ["nmap","-p 1-1000","-sV","-sS","-T4"]
CMD ["127.0.0.1"]
