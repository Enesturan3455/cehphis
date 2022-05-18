FROM debian:latest
LABEL MAINTAINER="https://github.com/Enesturan3455"

WORKDIR /cehphisher/
ADD . /cehphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./zphisher.sh"]
