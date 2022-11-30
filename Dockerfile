FROM node:latest as Builder
COPY . /app
WORKDIR /app
RUN npm install --global pkg
RUN pkg -t node16-linux-x64 app.js

FROM alpine:latest
COPY --from=Builder /app .
CMD  ./app-linux