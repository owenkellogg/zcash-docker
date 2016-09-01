FROM ubuntu:14.04

RUN sudo apt-get update

RUN sudo apt-get -y install \
    build-essential pkg-config libgtest-dev libc6-dev m4 \
    g++-multilib autoconf libtool ncurses-dev unzip git python \
    zlib1g-dev wget bsdmainutils automake

RUN git clone https://github.com/zcash/zcash.git /opt/zcash

WORKDIR /opt/zcash

RUN git checkout v0.11.2.z9 && ./zcutil/fetch-params.sh

RUN ./zcutil/build.sh -j$(nproc)

RUN cp /root/.zcash-params/regtest/* /root/.zcash-params/

COPY zcash.conf /root/.zcash/zcash.conf

CMD ["./src/zcashd"]

