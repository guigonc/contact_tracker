FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /opt/contact_tracker
WORKDIR /opt/contact_tracker
ADD Gemfile /opt/contact_tracker/Gemfile
ADD Gemfile.lock /opt/contact_tracker/Gemfile.lock
RUN bundle install -j3 -r3
ADD . /opt/contact_tracker
