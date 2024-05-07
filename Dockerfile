# Use an offical Node.js runtime as the base image 
FROM node:14

# Set the working directory in the container
WORKDIR /app

#copy package.json and package-lock.json to the working directory 
COPY package*.json ./

#Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
