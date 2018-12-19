FROM jekyll/builder:3.7

WORKDIR /app

ADD . /buildsrc
RUN sh -c "cp -r /buildsrc/* /app/ && chmod -R 0777 /app && ls /app" 2>&1 | tr -d '{}[]'
RUN sh -c "bundle install && bundle exec jekyll build" 2>&1 | tr -d '{}[]'

CMD jekyll serve

# FROM nginx:stable-alpine
# COPY --from=0  /app/_site /usr/share/nginx/html 
# RUN ls /usr/share/nginx/html

##§ '\n' + data.config.docker.generateDockerfileFrontMatter(data) + '\n' §##
LABEL maintainer="The Wise Team (https://wise-team.io/) <contact@wiseteam.io>"
LABEL vote.wise.wise-version="3.0.3"
LABEL vote.wise.license="MIT"
LABEL vote.wise.repository="steem-wise-manual"
##§ §.##