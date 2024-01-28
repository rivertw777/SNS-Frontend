# base image
FROM node:18.16.1-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package*.json ./
RUN yarn add react

# add app
COPY . .

# Expose the port
EXPOSE 3000

# start app
CMD ["yarn", "start"]
