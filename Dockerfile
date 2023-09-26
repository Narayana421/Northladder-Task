# From the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy all the files from your file system to the container file system
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the ports your application uses (e.g., MongoDB and Redis)
EXPOSE 3000 

# Generate build
RUN npm run build

# Start the Node.js application
CMD [ "npm", "start" ]

