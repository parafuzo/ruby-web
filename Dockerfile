FROM ruby:2.2-alpine
MAINTAINER dev@parafuzo.com

RUN apk add --update \
    build-base libxml2-dev libxslt-dev libstdc++ tzdata openssl-dev \
    libc-dev linux-headers git curl-dev imagemagick && \
    gem install bundler && \
    rm -rf /var/cache/apk/*

RUN bundle config build.nokogiri --use-system-libraries

CMD ["/bin/sh"]
