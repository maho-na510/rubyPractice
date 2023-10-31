FROM ruby:3.2.2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn
# RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
# && apt-get install -y nodejs
ARG RUBYGEMS_VERSION=3.3.20
RUN mkdir /rubyPractice
WORKDIR /rubyPractice
COPY Gemfile /rubyPractice/Gemfile
COPY Gemfile.lock /rubyPractice/Gemfile.lock
RUN bundle install
COPY . /rubyPractice

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000