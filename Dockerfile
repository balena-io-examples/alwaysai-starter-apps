FROM alwaysai/edgeiq:arm-latest
WORKDIR /usr/src

# Install alwaysAI CLI
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install --global alwaysai

CMD while : ; do echo "${MESSAGE=Idling...}"; sleep ${INTERVAL=600}; done