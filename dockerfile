FROM ubuntu:latest

ARG UID=1000

USER root

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
        sudo \
        binwalk \
        libimage-exiftool-perl \
        # nano

RUN useradd -s /bin/bash -d /home/ctf -u $UID -m -G sudo ctf 

# RUN echo "ctf ALL=NOPASSWD: ALL" > /etc/sudoers.d/ctf

USER ctf

ENTRYPOINT tail -f /dev/null
