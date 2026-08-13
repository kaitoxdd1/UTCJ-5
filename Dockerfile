FROM node:18
WORKDIR /app
COPY package.json yarn.lock ./
COPY . .
CMD ["node", "UT.js"]

