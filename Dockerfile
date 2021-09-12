FROM nginx:1.15.2-alpine
COPY ./build /var/www
COPY nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/site-available/default
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
