FROM node:slim as build

WORKDIR "/app"

COPY ./src/app/package.json ./src/app/package-lock.json /app/
RUN npm ci

COPY ./src/app/ /app/

EXPOSE 3000
CMD ["npm", "run", "start"]
