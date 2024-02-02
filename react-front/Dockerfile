# Use an official Node.js image as the base image
FROM node:20-alpine as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --silent

# Copy all files from the current directory to the working directory in the container
COPY . ./

# Build the Vite project
RUN yarn vite build

# Expose the port that the application will run on
EXPOSE 3000

FROM nginx:latest

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

COPY --from=build /app/dist/ .
