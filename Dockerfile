FROM jekyll/builder:3.7

WORKDIR /app

ADD . /buildsrc
RUN sh -c "cp -r /buildsrc/* /app/ && chmod -R 0777 /app && ls /app" 2>&1 | tr -d '{}[]'
RUN sh -c "bundle install && bundle exec jekyll build" 2>&1 | tr -d '{}[]'

CMD jekyll serve


##§ '\n' + data.config.docker.generateDockerfileFrontMatter(data) + '\n' §##
LABEL maintainer="The Wise Team (https://wise-team.io/) <jedrzejblew@gmail.com>"
LABEL vote.wise.wise-version="2.2.5"
LABEL vote.wise.license="MIT"
LABEL vote.wise.repository="steem-wise-manual"
##§ §.##