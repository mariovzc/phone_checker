FROM ruby:alpine3.18
RUN apk add \
build-base \
postgresql-dev \
tzdata \
nodejs

WORKDIR /app
COPY Gemfile* .
RUN gem uninstall nokogiri
RUN bundle config set force_ruby_platform true
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]