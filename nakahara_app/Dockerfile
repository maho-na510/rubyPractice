FROM ruby:3.2.2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn

# ARG RUBYGEMS_VERSION=3.3.20
RUN mkdir /rubyPractice
WORKDIR /rubyPractice

COPY Gemfile /rubyPractice/Gemfile
COPY Gemfile.lock /rubyPractice/Gemfile.lock

RUN bundle install
COPY . /rubyPractice
# コンテナ起動時に実行させるスクリプト

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000