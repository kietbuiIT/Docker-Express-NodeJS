# Cai phan ho tro
FROM node:16

#port bao nhieu
EXPOSE 3000

#chon dia chi lam viec
WORKDIR /app

#Cai dat 
RUN npm i npm@latest -g

COPY package.json package-lock.json ./

run npm install 

COPY . .

CMD ["node", "server.js"]

