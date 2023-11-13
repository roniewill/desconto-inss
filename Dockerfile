FROM ruby:3.2.2

RUN apt update
RUN apt upgrade -y
RUN apt install lsb-base lsb-release

# PostgresSQL
# Create the file repository configuration:
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt update \
    && apt install -y libpq-dev \
                      vim \
                      htop \
                      postgresql-14

RUN gem install pg
RUN gem install pg
ARG NODE_MAJOR=19
RUN curl -sL https://deb.nodesource.com/setup_$NODE_MAJOR.x | bash -

RUN apt-get update -qq && apt-get install -y nodejs && npm install -g yarn


ADD . /home/app/web
WORKDIR /home/app/web
