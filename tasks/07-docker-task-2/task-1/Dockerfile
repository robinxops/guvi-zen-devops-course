# Use the official Nginx image
FROM nginx:alpine

# Copy the HTML and CSS files
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80
