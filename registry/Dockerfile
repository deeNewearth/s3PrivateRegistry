FROM registry:2
MAINTAINER shree dee <dee@labizbille.com>

ENV CA_CERT ''
ENV CA_KEY ''

ENV REGISTRY_HTTP_ADDR 0.0.0.0:5000
ENV REGISTRY_HTTP_TLS_CERTIFICATE /certs/registry.crt
ENV REGISTRY_HTTP_TLS_KEY /certs/registry.key
ENV REGISTRY_HTTP_SECRET ''

COPY ./config.yml /etc/docker/registry/config.yml

COPY ./copycert.sh .
RUN chmod +x copycert.sh

#ENTRYPOINT ["tail", "-f", "/dev/null"]

ENTRYPOINT ["./copycert.sh"]

#ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/etc/docker/registry/config.yml"]
