FROM alpine:latest
MAINTAINER jliljenq

RUN apk --update --no-progress add nodejs bash git && \
	cd /tmp && \
    git clone https://github.com/RabbitMQSimulator/RabbitMQSimulator.git && \
    cd RabbitMQSimulator && \
    npm install

CMD node /tmp/RabbitMQSimulator/app.js

EXPOSE 3000/tcp

