FROM almalinux:9
RUN dnf install nginx -y 

#removing index.html
RUN rm -rf /usr/share/nginx/html/index.html
#Copying custom index.html
# COPY index.html /usr/share/nginx/html/index.html

ADD https://gist.githubusercontent.com/straker/ff00b4b49669ad3dec890306d348adc4/raw/315d16d17bca6920cd1ae9192dca647ccb3e0d5d/snake.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]