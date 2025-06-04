# Base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy HTML and CSS files into the container
COPY bbp1.txt ./index.html
COPY style.CSS ./style.css

# Expose default port
EXPOSE 80
