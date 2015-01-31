# docker-finalterm
Simple build environment for finalterm

Thanks to bitclaw for the guide:
https://github.com/p-e-w/finalterm/issues/265#issuecomment-45407026

one step did not work for me (`updatedb`) and I'm not too familliar with vanilla debian so im not sure why i need it..


#### Build the image

`docker build -tag="cjlyth/finalterm:latest" .`

#### Check it out

`docker run -it --rm cjlyth/finalterm:latest bash`




This method for building the docker container is very tempting..
see https://wiki.debian.org/ListInstalledPackages

```
dpkg --set-selections < /backup/dpkg-selections
apt-get dselect-upgrade
```
