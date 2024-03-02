FROM ruby:3.0.0

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql postgresql-contrib

WORKDIR /om30-test

COPY Gemfile /om30-test/Gemfile
COPY Gemfile.lock /om30-test/Gemfile.lock

RUN bundle install

COPY . /om30-test
# Configuração do PostgreSQL
USER postgres
RUN /etc/init.d/postgresql start && \
    psql --command "SELECT 1 FROM pg_roles WHERE rolname='postgres'" | grep -q 1 || createuser -s postgres && \
    psql --command "CREATE USER database_user WITH SUPERUSER PASSWORD 'database_user';" && \
    psql --command "SELECT 1 FROM pg_database WHERE datname='om30_test'" | grep -q 1 || createdb -O database_user -E UTF8 -T template0 om30_test

USER root