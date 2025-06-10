FROM almalinux:9
RUN dnf install nginx -y 

#removing index.html

#Copying custom index.html
COPY index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]