# Use the official Node.js 14 image from Docker Hub
FROM node:14

# Set the working directory in the docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of your application's source code to the working directory
COPY . .

# Expose port 8080 on the docker image
EXPOSE 8080

# Start the application
CMD ["npm", "start"]