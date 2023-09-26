# From the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the ports your application uses (e.g., MongoDB and Redis)
EXPOSE 3000 27017 6379

# Define environment variables for MongoDB and Redis connection
# Replace these values with your actual MongoDB and Redis connection information
ENV MONGODB_URI mongodb://mongodb-hostname:27017/your-database-name
ENV REDIS_HOST redis-hostname
ENV REDIS_PORT 6379

# Start the Node.js application
CMD [ "npm", "start" ]



