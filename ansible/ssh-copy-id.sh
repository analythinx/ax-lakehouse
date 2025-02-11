for host in $(grep -v '^\[' /etc/ansible/hosts)
do
    sshpass -p 'pass' ssh-copy-id -o StrictHostKeyChecking=no root@${host}
done
