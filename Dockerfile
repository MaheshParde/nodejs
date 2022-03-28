FROM node

RUN mkdir -p /app/client
WORKDIR /app/client


COPY /client/package.json /app/client/
RUN npm install -g yarn
RUN yarn install

COPY . /app/client/

CMD ["npm", "start"]
