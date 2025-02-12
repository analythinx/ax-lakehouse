cat > /etc/containers/registries.conf.d/local-k8s-registry.conf <<EOF
[[registry]]
location = "192.168.0.21:5000"
insecure = true

EOF
