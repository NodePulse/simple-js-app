# Use official Node.js image as base
FROM node:18

# Create app directory
WORKDIR /src

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 8000

# Command to run the app
CMD ["npm", "start"]
