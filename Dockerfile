FROM jekyll/builder:3.7

ADD . /srv/jekyll
WORKDIR /srv/jekyll

RUN gem install minimal-mistakes-jekyll
RUN jekyll build


CMD jekyll serve

