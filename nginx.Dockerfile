FROM nginx:1.15.6
LABEL maintainer="chiisa.x10@gmail.com"
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get clean
RUN apt-get autoremove -y
COPY myweb-app/nginx.conf /etc/nginx/conf.d/default.conf
HEALTHCHECK --interval=3m --timeout=3s CMD curl -f http://localhost/ || exit 1