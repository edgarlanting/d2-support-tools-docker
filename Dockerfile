FROM ubuntu:latest
RUN apt update && apt -y install curl vim jq ldap-utils unzip p7zip
RUN curl -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
	curl -o /usr/local/bin/dcos https://downloads.dcos.io/binaries/cli/linux/x86-64/0.8.0/dcos && \
	curl -o /usr/local/bin/bun https://github.com/adyatlov/bun/releases/download/v1.8.1/bun_linux_amd64 && \
	curl -o /usr/local/bin/dcosjq https://raw.githubusercontent.com/some-things/dcosjq/master/dcosjq.sh && \
	chmod +x /usr/local/bin/*
# kubectl proxy
EXPOSE 8001

