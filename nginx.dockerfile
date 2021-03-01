# Base image
FROM nginx:alpine

# Workdir
WORKDIR /app

# Create log files
RUN touch /var/log/nginx/access.log /var/log/nginx/error.log

# Copy config file
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy static resources
COPY ./public /app/public