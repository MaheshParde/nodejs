FROM node

RUN mkdir -p /app/client
WORKDIR /app/client

COPY /client/package.json .

RUN npm install

COPY . ./
EXPOSE 3000
CMD ["npm", "start"]
