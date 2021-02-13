FROM ubuntu:20.04

ADD bitcoin-0.21.0-x86_64-linux-gnu.tar.gz /

RUN mv bitcoin-0.21.0 bitcoin

WORKDIR /bitcoin/bin

RUN chmod +x /bitcoin/bin/bitcoind

COPY client.conf /bitcoin/client.conf

#USE A VOLUME TO /app/data or it won't boot


CMD ./bitcoind -conf=/bitcoin/client.conf


