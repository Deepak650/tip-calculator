# Use the official Node.js image from the Docker Hub
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install http-server globally
RUN npm install -g http-server

# Copy the rest of the application code (HTML, JS, CSS)
COPY . .

# Expose the port that the app runs on
EXPOSE 8080

# Command to run the application
CMD ["http-server", "-p", "8080"]
