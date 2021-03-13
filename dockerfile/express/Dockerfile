FROM node:12-slim

WORKDIR /app/src

COPY . .

RUN apt update; apt install -y vim curl; \
    npm i --production

HEALTHCHECK --interval=3s --timeout=3s \
    CMD curl -f http://localhost:3000/ || exit 1

CMD [ "npm", "run", "dev" ]