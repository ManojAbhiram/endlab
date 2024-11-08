# Base image
FROM mirror.gcr.io/library/node:14

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Expose port and start the app
EXPOSE 8080
CMD ["npm", "start"]
