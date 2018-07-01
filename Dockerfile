FROM node:10
RUN apt-get update && apt-get upgrade -y
RUN apt-get install sudo -y
RUN npm install -g yo generator-hubot && useradd hubot -m -s /bin/sh

USER hubot
WORKDIR /home/hubot
RUN echo no | yo hubot --owner="Owner owner@mail.com" --name="webhook-hubot" --description="Hubot for mattermost webhooks" --adapter=mattermost && \
sed -i /heroku/d ./external-scripts.json && sed -i '/dependencies/a  "coffee-script": "^1.12.6",' ./package.json

USER root
WORKDIR /
ADD docker-entry.sh .
RUN chmod +x ./docker-entry.sh

ENV EXPRESS_PORT 8081
ENV HUBOT_LOG_LEVEL debug

EXPOSE 8081

ENTRYPOINT ["/bin/sh", "-c", "/docker-entry.sh ${*}", "--"]