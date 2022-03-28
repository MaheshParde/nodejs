FROM node

RUN mkdir -p /app/client
WORKDIR /app/client


COPY /client/package.json /app/client/

RUN yarn install --pure-lockfile

COPY . /app/client/

CMD ["npm", "start"]
