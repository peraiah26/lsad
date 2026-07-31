FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
RUN COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp
CMD ["nginx","-g","daemon off;"]