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
* yabt
* mcli

### Run it
```
docker run -it --rm jwhitemeso/dcos-support-tools:latest bash
```

or

### Build it
```
git clone
cd dcos-support-tools
docker build -t jwhitemeso/dcos-support-tools:latest .
```
### Current versions
|Tool|Version|
|---|---|
|DC/OS CLI|0.8.0|
|bun|1.8.1|
|dcosjq|master|

