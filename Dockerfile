FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y python-pip

RUN pip install kolibri

RUN groupadd -g 1000 kolibri \
&& useradd -m -u 1000 -g kolibri kolibri

#USER kolibri

CMD kolibri start --debug --foreground
