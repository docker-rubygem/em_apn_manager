FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.5

RUN gem install em_apn_manager --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["em_apn_manager"]
CMD ["--help"]
