FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /FDVAware
COPY Gemfile /FDVAware/Gemfile
COPY Gemfile.lock /FDVAware/Gemfile.lock
RUN bundle install
COPY . /FDVAware

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process
CMD ["apt-get", "install", "npm"]
CMD ["npm", "install", "--global", "yarn"]
CMD ["rails", "server", "-b", "0.0.0.0"]