FROM ruby:2.3.3-alpine

RUN apk --update add alpine-sdk
RUN gem install --no-ri --no-rdoc geminabox puma

RUN mkdir -p /opt/geminabox/

ADD files/config.ru /opt/geminabox/config.ru

VOLUME ["/opt/geminabox/data"]
EXPOSE 9292
WORKDIR /opt/geminabox
CMD	["puma"]
