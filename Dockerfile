FROM ruby:3.1
ARG UNAME=app
ARG UID=1000
ARG GID=1000

# bin/wait-for depends on netcat
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  netcat

RUN groupadd -g $GID -o $UNAME
RUN useradd -m -d /usr/src/app -u $UID -g $GID -o -s /bin/bash $UNAME
RUN mkdir -p /gems && chown $UID:$GID /gems

WORKDIR /usr/src/app
ENV BUNDLE_PATH /gems
RUN gem install bundler

USER $UNAME

