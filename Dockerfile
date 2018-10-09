FROM jekyll/builder:3.7

WORKDIR /app

ADD . /buildsrc
RUN sh -c "cp -r /buildsrc/* /app/ && chmod -R 0777 /app && ls /app"
RUN sh -c "bundle install && bundle exec jekyll build"

CMD jekyll serve


##§ '\n' + data.config.docker.generateDockerfileFrontMatter(data) + '\n' §##
LABEL maintainer="The Wise Team (https://wise-team.io/) <jedrzejblew@gmail.com>"
LABEL vote.wise.wise-version="1.2.2"
LABEL vote.wise.license="MIT"
LABEL vote.wise.repository="steem-wise-manual"
##§ §.##