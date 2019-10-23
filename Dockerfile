FROM ubuntu:latest
RUN apt update && apt -y install curl vim jq ldap-utils unzip p7zip python3-pip
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
	curl -Lo /usr/local/bin/dcos https://downloads.dcos.io/cli/releases/binaries/dcos/linux/x86-64/1.1.0/dcos && \
	curl -LO https://github.com/mesosphere/bun/releases/download/v2.2.0/bun_linux_amd64.tar.gz && \
	tar xzf bun_linux_amd64.tar.gz && \
	mv bun /usr/local/bin/ && \
	curl -Lo /usr/local/bin/dcosjq https://raw.githubusercontent.com/some-things/dcosjq/master/dcosjq.sh && \
	curl -Lo /usr/local/bin/kbk https://raw.githubusercontent.com/some-things/kbk/master/kbk.sh && \
	pip3 install d2yabt && \
	chmod +x /usr/local/bin/*
# kubectl proxy
EXPOSE 8001

