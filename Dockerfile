FROM jekyll/builder:3.7

WORKDIR /app

ADD . /buildsrc
RUN sh -c "cp -r /buildsrc/* /app/ && chmod -R 0777 /app && ls /app"
RUN sh -c "bundle install && bundle exec jekyll build"

CMD jekyll serve