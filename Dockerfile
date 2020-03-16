FROM ruby:2.7.0-alpine3.11

RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install -y nodejsA

RUN mkdir /hexa-institute

WORKDIR /hexa-institute

COPY Gemfile /hexa-institute/Gemfile

COPY Gemfile.lock /hexa-institute/Gemfile.lock

RUN bundle install

COPY . /hexa-institute

#run script for rails
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000


# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
