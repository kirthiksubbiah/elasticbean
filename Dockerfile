# Use official Node.js image
FROM node:18-alpine
 
# Set the working directory
WORKDIR /app
 
# Copy package.json (and package-lock.json if exists)
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the app
COPY . .
 
# Expose the port your app runs on
EXPOSE 3000
 
# Start the application
CMD ["node", "app.js"]
