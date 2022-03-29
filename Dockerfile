FROM node

RUN mkdir -p /app/client
WORKDIR /app/client

COPY /client/package.json /app/client/
RUN yarn cache clean
RUN npm install

COPY . /app/client/
EXPOSE 3000
CMD ["npm", "start"]
