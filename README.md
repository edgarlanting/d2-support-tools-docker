*d2-support-tools is neither supported nor endorsed by [D2iQ](https://d2iq.com).*

This Docker image includes several diagnostic and support tools for D2iQ products such as DC/OS and Konvoy:

* [DC/OS CLI](https://github.com/dcos/dcos-cli/releases)
* [Andrey Dyatlov's](https://github.com/adyatlov) [bun](https://github.com/mesosphere/bun)
* [Jeff White's](https://github.com/jeffwhite530) [d2yabt](https://github.com/jeffwhite530/d2yabt)
* [Dustin Nemes'](https://github.com/some-things) [dcosqj](https://github.com/some-things/dcosjq)
* [Dustin Nemes'](https://github.com/some-things) [kbk](https://github.com/some-things/kbk)
* kubectl
* curl
* vim
* jq
* ldap-utils
* unzip/p7zip

TODO:
* [Tim Harper's](https://github.com/timcharper) [mcli](https://github.com/timcharper/mcli)

### Current versions
|Tool|Version|
|---|---|
|DC/OS CLI|1.1.0|
|bun|2.2.0|
|d2yabt|1.0.5|
|dcosjq|master@c5a8277|
|kbk|master@26c316e|

### Run it
```
docker run -it --rm jwhitemeso/d2-support-tools:latest bash
```

or

### Build it
```
git clone git@github.com:jeffwhite530/d2-support-tools-docker.git
cd d2-support-tools-docker
docker build -t jwhitemeso/d2-support-tools:latest .
```

### Connecting to Kubernetes with `kubectl proxy`
```
docker run -it --rm -p 8001:8001 jwhitemeso/d2-support-tools:latest bash
# Connect to your cluster then ...
kubectl proxy --address=0.0.0.0
```

