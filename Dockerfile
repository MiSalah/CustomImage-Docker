# Specify a base image
FROM node:alpine

# here where the application files will be moved into the image that we will build. 
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./

# the command below will be executed only if the package.json file has been modified
RUN npm install
# Copy everything in this folder './' in the working directory './usr/app' specified above
COPY ./ ./

# Default command
CMD ["npm", "start"]