# docker-finalterm
Simple build environment for finalterm

Thanks to bitclaw for the guide:
https://github.com/p-e-w/finalterm/issues/265#issuecomment-45407026

one step did not work for me (`updatedb`) and I'm not too familliar with vanilla debian so im not sure why i need it..

#### Build a persistent volume

```
docker run -d --name="finalterm_data" \
		-v /opt/finalterm \
		-v /usr/src/finalterm/build \
		busybox true
```

#### Build the image

`docker build --tag="cjlyth/finalterm:latest" .`

#### Check it out

```
docker run -it --rm \
	--volumes-from="finalterm_data" \
	cjlyth/finalterm:latest cmake

docker run -it --rm \
	--volumes-from="finalterm_data" \
	cjlyth/finalterm:latest make

docker run -it --rm \
	--volumes-from="finalterm_data" \
	cjlyth/finalterm:latest install

```


This method for building the docker container is very tempting..
see https://wiki.debian.org/ListInstalledPackages

```
dpkg --set-selections < /backup/dpkg-selections
apt-get dselect-upgrade
```


