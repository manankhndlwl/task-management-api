FROM node:23.6.0

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g typescript ts-node

EXPOSE 5000

# Command to run the app
CMD ["npm", "run", "dev"]