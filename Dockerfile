# Use official nginx (smaller, secure, maintained)
FROM nginx:stable-alpine

# Remove default html (optional) and copy custom site into container
RUN rm -rf /usr/share/nginx/html/*

# Copy site files from your repo's ./site into container's web root
COPY site/ /usr/share/nginx/html/

# Optional: copy custom nginx config (uncomment if you have default.conf in repo)
# COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# Nginx base image already sets a good default CMD, so we don't need to override it.
