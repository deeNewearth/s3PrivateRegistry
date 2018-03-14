#!/bin/sh
mkdir -p /certs
echo $CA_CERT > /certs/registry.crt

#we need to replace the \n by real newline and remove the space that yml puts infromt of each line
sed -i 's/\\n /\n/g' /certs/registry.crt

echo $CA_KEY > /certs/registry.key
sed -i 's/\\n /\n/g' /certs/registry.key

/entrypoint.sh /etc/docker/registry/config.yml

