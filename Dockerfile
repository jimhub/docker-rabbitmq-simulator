FROM alpine:3.3
MAINTAINER jliljenq

RUN apk --update --no-progress add nodejs bash git && \
	cd /tmp && \
    git clone https://github.com/RabbitMQSimulator/RabbitMQSimulator.git && \
    cd RabbitMQSimulator && \
    npm install && \
	cp config.sample.json config.json

CMD node /tmp/RabbitMQSimulator/app.js

EXPOSE 3000/tcp

