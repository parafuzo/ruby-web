FROM ruby:2.3-alpine
MAINTAINER dev@parafuzo.com

RUN apk add --update \
    build-base libxml2-dev libxslt-dev libstdc++ tzdata openssl-dev nodejs \
    libc-dev linux-headers git curl-dev imagemagick ruby-json && \
    gem install bundler && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
