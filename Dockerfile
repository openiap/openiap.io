# production environment
FROM nginx:stable-alpine
COPY public /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
WORKDIR /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
# docker build -t cloudhack/openiap:latest -t cloudhack/openiap:0.24 . && docker run -it -p 80:80 --rm cloudhack/openiap:latest
# docker build -t cloudhack/openiap:latest -t cloudhack/openiap:0.24 . && docker run -it -p 80:80 --rm cloudhack/openiap:latest
# docker build -t cloudhack/openiap:latest -t cloudhack/openiap:0.24 . && docker push cloudhack/openiap:latest && docker push cloudhack/openiap:0.24