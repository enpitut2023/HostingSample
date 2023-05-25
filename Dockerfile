FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./src /usr/share/nginx/html
RUN service nginx start