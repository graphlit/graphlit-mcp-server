# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install --production --ignore-scripts

# Copy app source code
COPY . .

# Build the project
RUN npm run build

# Expose port if needed (adjust if your server listens on a port)
# EXPOSE 3000

# Start the server
CMD ["node", "build/index.js"]
