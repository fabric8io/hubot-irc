FROM  fedora:21

MAINTAINER fabric8.io <fabric8@googlegroups.com>

RUN yum install -y npm git make
RUN npm install -g yo generator-hubot
RUN npm install -g coffee-script
RUN npm install hubot -g

RUN useradd hubot
USER hubot
WORKDIR /home/hubot

RUN yo hubot --owner="fabric8.io <fabric8@googlegroups.com>" --name="fabric8" --description="Platform manager" --adapter=irc --defaults

ADD fabric8.coffee /home/hubot/scripts/

CMD /home/hubot/bin/hubot --adapter irc


