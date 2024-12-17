FROM ubuntu:latest

# Update and install required dependencies
RUN apt-get update && \
    apt-get install -y curl

# Install Node.js (sudo removed because it's not needed in Docker)
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs

# Copy application files
COPY package.json package-lock.json ./
RUN npm install

COPY server.js .


# Define the entry point
ENTRYPOINT [ "node", "server.js" ]
