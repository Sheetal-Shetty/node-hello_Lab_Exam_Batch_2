FROM node:18
WORKDIR /app
COPY *.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
