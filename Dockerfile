FROM node:20-alpine

WORKDIR /app

COPY UT.js .

CMD ["node", "UT.js"]
