FROM ruby:2.4.1-alpine

MAINTAINER Masaya Nasu (tomato.wonder.life@gmail.com)

ENV LANG ja_JP.UTF-8

RUN apk update && \
    apk upgrade && \
    apk add --update \
    zsh \
    build-base \
    libxml2-dev \
    libxslt-dev \
    mysql-dev
RUN bundle config build.nokogiri --use-system-libraries

CMD ["irb"]
