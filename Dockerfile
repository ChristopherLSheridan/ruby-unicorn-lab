FROM ruby:3.3-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY app/ ./app/

EXPOSE 3000

CMD ["bundle", "exec", "unicorn", "-l", "0.0.0.0:3000", "app/config.ru"]
