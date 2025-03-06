FROM nginx:latest

COPY . /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80