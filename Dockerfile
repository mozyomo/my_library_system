FROM ruby:3.1
ARG RUBYGEMS_VERSION=3.3.20
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs npm default-mysql-client
RUN mkdir /app
WORKDIR /app
RUN npm i bootstrap-icons
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem update --system && bundle install
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
