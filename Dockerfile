

FROM ubuntu

RUN apt update
RUN apt install -y python3

RUN export DEBIAN_FRONTEND=noninteractive; apt install -y apache2

COPY doug.py .

CMD python3 doug.py
