FROM alpine:3.4
MAINTAINER shree dee <dee@labizbille.com>

ENV CA_CERT ''

COPY ./copycert.sh .
RUN chmod +x copycert.sh

#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["./copycert.sh"]