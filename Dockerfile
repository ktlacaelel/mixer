FROM ruby:3.1.4-slim

RUN gem install bundler:2.2.28

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# CMD ["ruby", "/app/bin/mixer"]
