FROM base/archlinux

MAINTAINER Dave Kleinschmidt <dave.f.kleinschmidt@gmail.com>

RUN pacman -Syu && \
    pacman -S texlive-most biber make --noconfirm

RUN ln -s /usr/bin/vendor_perl/biber /usr/bin/biber

RUN mkdir /data

WORKDIR /data
VOLUME ["/data"]
