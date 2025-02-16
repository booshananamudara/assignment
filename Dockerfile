# Use an official Nginx image as a base image
FROM nginx:latest

# Copy the custom Nginx configuration to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the website files into the Nginx container's web directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

# Expose port 80 to be accessible from the host
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
