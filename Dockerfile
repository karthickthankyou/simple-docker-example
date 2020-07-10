# Base image
FROM node:alpine

WORKDIR '/usr/app'

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Start command
CMD ["npm","start"]