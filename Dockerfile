FROM node:20.11.1

WORKDIR /usr/src/app

COPY package.json .
COPY tsconfig.json .

# Install all Packages
RUN npm i

ADD . /usr/src/app

RUN npm run build

CMD [ "npm" ,"run", "start" ]
EXPOSE 3000