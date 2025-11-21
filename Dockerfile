# FROM node:18
# WORKDIR /app
# COPY *.json .
# RUN npm install
# COPY . .
# CMD ["npm", "start"]
FROM node:latest
LABEL Name = "Node lab exam"
WORKDIR /app

COPY package.json .
RUN npm install --production --silent

COPY . .

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
