FROM ruby:3.2.2
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
&& apt-get install -y nodejs
RUN npm install --global yarn
WORKDIR /rubyPractice
COPY Gemfile /rubyPractice/Gemfile
COPY Gemfile.lock /rubyPractice/Gemfile.lock
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]