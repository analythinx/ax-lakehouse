podman run -d -p 5000:5000 \
	--name registry \
	-v $(pwd)/registry_certs:/certs:z \
	--env REGISTRY_HTTP_TLS_CERTIFICATE=/certs/registry.crt \
        --env REGISTRY_HTTP_TLS_KEY=/certs/registry.key \
	registry:2
