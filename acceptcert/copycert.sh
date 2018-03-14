#!/bin/sh
mkdir -p /dockercerts/certs.d
mkdir -p /dockercerts/certs.d/swarmman_internal.labizbille.com:5000
echo $CA_CERT > /dockercerts/certs.d/swarmman_internal.labizbille.com:5000/ca.crt
sed -i 's/\\n /\n/g' /dockercerts/certs.d/swarmman_internal.labizbille.com:5000/ca.crt
exit 0

