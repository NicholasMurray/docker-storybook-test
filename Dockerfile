# Use the official Node.js image as the base image
FROM node:20-alpine

# # Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available) to the working directory
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that Storybook will run on
EXPOSE 6006

# Command to run Storybook
CMD ["npm", "run", "storybook"]