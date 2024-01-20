FROM ruby:3.1
ARG RUBYGEMS_VERSION=3.3.20
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs default-mysql-client
RUN mkdir /rails_practice
WORKDIR /rails_practice
COPY Gemfile /rails_practice/Gemfile
COPY Gemfile.lock /rails_practice/Gemfile.lock
RUN gem update --system && bundle install
COPY . /rails_practice

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
