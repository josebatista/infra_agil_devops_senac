FROM ubuntu
RUN ["apt-get","update","-y"]
RUN ["apt-get","install","-y","python-pip","python-dev","build-essential"]
COPY color.py /
COPY templates/ /templates
COPY requirements.txt /
RUN ["pip","install","-r","requirements.txt"]
ENTRYPOINT ["python","color.py"]
