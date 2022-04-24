FROM debian

RUN mkdir -p /etc/tmp
COPY ./conf/ssl/server.conf /etc/tmp/
RUN mkdir -p /etc/ssl /etc/ssl/private /etc/ssl/certs/ /etc/nginx

COPY ./conf/ssl/cert.crt /etc/ssl/certs/cert.crt
COPY ./conf/ssl/key.key /etc/ssl/private/key.key

COPY ./conf/ssl/dhparam.pem /etc/nginx/dhparam.pem
COPY ./tools/setup.sh /etc/tmp
EXPOSE 443

ENTRYPOINT [ "/bin/sh", "/etc/tmp/setup.sh" ]