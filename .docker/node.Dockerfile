FROM node:18-alpine
RUN apk add --update --no-cache file imagemagick

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package.json yarn.lock ./
USER node
RUN yarn install
COPY --chown=node:node ./src ./src/
COPY --chown=node:node tsconfig.json .env* ./
RUN yarn run build

CMD ["yarn", "run", "start"]