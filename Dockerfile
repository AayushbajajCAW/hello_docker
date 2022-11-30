FROM node as Builder
COPY . /app
WORKDIR /app

FROM alpine:latest
COPY --from=Builder /app .
CMD node app.js