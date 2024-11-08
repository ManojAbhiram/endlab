# Base image
FROM node:14

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Define build, test, and start commands
RUN npm test
RUN npm run build

# Expose port and start the app
EXPOSE 8080
CMD ["npm", "start"]
