FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN apt-get update -qq && apt-get install -y default-libmysqlclient-dev
RUN mkdir /soccerleague
WORKDIR /soccerleague
COPY Gemfile /soccerleague/Gemfile
COPY Gemfile.lock /soccerleague/Gemfile.lock
RUN bundle install
COPY . /soccerleague
