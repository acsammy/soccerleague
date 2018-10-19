FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install nodejs -yq
RUN mkdir /soccerleague
WORKDIR /soccerleague
COPY Gemfile /soccerleague/Gemfile
COPY Gemfile.lock /soccerleague/Gemfile.lock
RUN bundle install
COPY . /soccerleague
