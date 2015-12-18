FROM ruby

RUN apt-get update
RUN apt-get install -y nodejs

ENV APPDIR /opt/app/
RUN mkdir $APPDIR
WORKDIR $APPDIR

ADD Gemfile* $APPDIR
RUN bundle install --jobs 4
ADD . $APPDIR

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
