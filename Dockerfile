FROM node:10-alpine as builder

RUN apk add --no-cache nano git

RUN mkdir -p /usr/app/Scratch3
RUN git clone https://github.com/LLK/scratch-gui.git /usr/app/Scratch3
RUN cd usr/app/Scratch3 && npm install && npm run build

FROM nginx:1.15-alpine
COPY --from=builder /usr/app/Scratch3/build /usr/share/nginx/html
