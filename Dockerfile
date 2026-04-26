FROM node:20-alpine

WORKDIR /app

COPY . .

WORKDIR /app/backend
RUN npm install

WORKDIR /app/frontend
RUN npm install && npm run build

WORKDIR /app/backend

EXPOSE 3000

CMD ["node", "server.js"]