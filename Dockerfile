FROM node:14.15.3-alpine3.12

WORKDIR /usr/src/app/server/
COPY server/package*.json ./
RUN npm install -qy
COPY server/ ./

ENV PORT 8080

EXPOSE 8080

CMD ["npm", "start"]