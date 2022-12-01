FROM ruby:latest

RUN mkdir /usr/src/app

ADD . /usr/src/app
COPY Gemfile /usr/src/app/
WORKDIR /usr/src/app/

RUN bundle install

CMD ["/bin/sh"]