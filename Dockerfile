FROM ruby:2.2.2

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile* /app/

RUN bundle install -j4

ADD . /app

# Let's create a user to run the app that is not root
RUN /usr/sbin/useradd --create-home --home-dir /app --shell /bin/bash depot

RUN chown -R depot:depot /app

USER depot

RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
CMD ["rails", "server"]
