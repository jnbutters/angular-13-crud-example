FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html
COPY dist/Angular13Crud/ .

EXPOSE 8081

COPY ./entryPoint.sh /
RUN chmod +x /entryPoint.sh
ENTRYPOINT ["sh","/entryPoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
