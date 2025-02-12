mkdir registry_certs
openssl req -newkey rsa:4096 -nodes -sha256 -keyout registry_certs/registry.key \
    -x509 -days 365 -out registry_certs/registry.crt -subj "/C=TR/ST=State/L=City/O=Organization/CN=192.168.0.21" \
    -addext "subjectAltName=IP:192.168.0.21"
