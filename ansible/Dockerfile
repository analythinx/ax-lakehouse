FROM python:3.9-slim

RUN apt-get update -y && apt-get install -y \
    sshpass \
    software-properties-common \
    git \
    vim \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir ansible

RUN ssh-keygen -f /root/.ssh/id_rsa -N ""

COPY hosts /etc/ansible/hosts

WORKDIR /ansible

RUN wget https://github.com/containerd/containerd/releases/download/v2.0.1/containerd-2.0.1-linux-amd64.tar.gz
RUN wget https://github.com/opencontainers/runc/releases/download/v1.2.3/runc.amd64
RUN wget https://github.com/containernetworking/plugins/releases/download/v1.6.2/cni-plugins-linux-amd64-v1.6.2.tgz
RUN wget https://github.com/containerd/nerdctl/releases/download/v2.0.2/nerdctl-2.0.2-linux-amd64.tar.gz

COPY ssh-copy-id.sh .
COPY k8s_playbook.yml .
COPY install-k8s.sh .
COPY containerd.service .

#CMD ["sleep", "infinity"]
CMD ["bash", "install-k8s.sh"]
