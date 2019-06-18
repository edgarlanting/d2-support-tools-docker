This Docker image was created to be used to work with and troubleshoot DC/OS clusters.  It is based off of ubuntu:latest and creates a container which includes:

* [DC/OS CLI](https://github.com/dcos/dcos-cli/releases)
* [Andrey Dyatlov's](https://github.com/adyatlov) [bun](https://github.com/adyatlov/bun/releases)
* [Dustin Nemes'](https://github.com/some-things) [dcosqj](https://github.com/some-things/dcosjq)
* kubectl
* curl
* vim
* jq
* ldap-utils
* unzip/p7zip

TODO:
* [Jeff White's](https://github.com/jeffwhite530) yabt
* [Time Harper's](https://github.com/timcharper) [mcli](https://github.com/timcharper/mcli)

### Current versions
|Tool|Version|
|---|---|
|DC/OS CLI|0.8.0|
|bun|1.8.1|
|dcosjq|master|

### Run it
```
docker run -it --rm jwhitemeso/dcos-support-tools:latest bash
```

or

### Build it
```
git clone git@github.com:jeffwhite530/dcos-support-tools-docker.git
cd dcos-support-tools-docker
docker build -t jwhitemeso/dcos-support-tools:latest .
```

### Connecting to Kubernetes with `kubectl proxy`
```
docker run -it --rm -p 8001:8001 jwhitemeso/dcos-support-tools:latest bash
# Connect to your cluster then ...
kubectl proxy --address=0.0.0.0
```

