set -x
for container in $(cat k8s-containers.txt)
do
	podman pull $container
	target_container=$(echo $container | rev | cut -d'/' -f1 | rev)
	#podman push --tls-verify=false $container 192.168.0.21:5000/$container
	podman push --tls-verify=false $container 192.168.0.21:5000/$target_container
	
done



