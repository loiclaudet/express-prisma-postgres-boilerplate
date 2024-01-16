# Use the official Node.js 20 image from Docker Hub
FROM node:20-bullseye

# Set the working directory in the container
WORKDIR /usr/src/app

# Enable Corepack to manage PNPM
RUN corepack enable

# Install PNPM
RUN corepack prepare pnpm@8 --activate

# Copy package.json and pnpm-lock.yaml and install dependencies
COPY package.json ./
COPY pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# Copy the rest of the app's source code
COPY . .

# Expose the port the app runs on
EXPOSE 2187

# Set the command to run the app when the container starts
CMD ["pnpm", "run", "dev"]
