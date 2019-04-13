FROM node:10-alpine

RUN apk add --no-cache nano git

RUN mkdir -p /usr/app/Scratch3
RUN git clone https://github.com/LLK/scratch-gui.git /usr/app/Scratch3
RUN cd usr/app/Scratch3 && npm install

RUN sed -i 's/"start": "webpack-dev-server"/"start": "webpack-dev-server --progress"/g' package.json

EXPOSE 8601

WORKDIR /usr/app/Scratch3

CMD ["npm","start"]
