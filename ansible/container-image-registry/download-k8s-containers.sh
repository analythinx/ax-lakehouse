set -x
for container in $(cat k8s-containers.txt)
do
	podman pull $container
	container_name_without_registry=$(echo $container | sed -E 's|^[^/]+/([^/]+/.*)|\1|')
	plain_container_name=$(echo $container | rev | cut -d'/' -f1 | rev)
	podman push --tls-verify=false $container 192.168.0.21:5000/$container_name_without_registry
	podman push --tls-verify=false $container 192.168.0.21:5000/$plain_name_container
	
done



