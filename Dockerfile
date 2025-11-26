# Use official Nginx image
FROM nginx:latest

# Remove default website
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom static files
COPY index.html /usr/share/nginx/html
COPY img/ /usr/share/nginx/html/
# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
