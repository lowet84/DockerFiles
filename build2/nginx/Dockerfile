FROM nginx

COPY index.html /usr/share/nginx/html/index.html 
COPY favicon.ico /usr/share/nginx/html/favicon.ico
COPY favicon.ico /etc/nginx/html/favicon.ico
COPY default.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
