FROM ruby:3.3.0

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENTRYPOINT ["bundle", "exec"]

CMD ["ruby", "main.rb"]
# CMD ["ruby", "main.rb"]


# CMD ["bundle", "exec", "rspec", "spec"]
