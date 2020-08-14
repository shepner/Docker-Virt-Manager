# Docker-Virt-Manager

Experimenting with running a Docker container running an X11 application, presented in VNC, and accessed HTTP via Guacamole.  All to keep from installing this mess directly on the server itself.

Leveraging the [linuxserver.io](https://www.linuxserver.io/) [docker-calibre repo](https://github.com/linuxserver/docker-calibre) since they already did the hard part resulting in the `lsiobase/guacgui` base image.

End-goal of running [virt-manager](https://virt-manager.org/)


Fetch and build
``` shell
rm -Rf ./Docker-Virt-Manager
git clone https://github.com/shepner/Docker-Virt-Manager.git
sudo docker build -t test ./Docker-Virt-Manager
```

Run
``` shell
mkdir -p ./Docker-Virt-Manager/config

sudo docker run -it \
  -p 8080:8080 \
  -v /home/shepner/test/config:/config \
  test
```

``` shell
sudo docker run \
  --name=calibre \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ="America/Chicago" \
  -p 8080:8080 \
  -p 8901:8081 \
  -v /home/shepner/calibre:/config \
  linuxserver/calibre
```



