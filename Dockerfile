# Use lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the static website file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in foreground so the container keeps running
CMD ["nginx", "-g", "daemon off;"]