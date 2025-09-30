# Stage 1: (optional) no build step since this is static HTML+CSS
FROM nginx:alpine

# Copy site into the default nginx web root
COPY . /usr/share/nginx/html

# Health check (simple HTTP 200 on /)
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost:80/ >/dev/null || exit 1