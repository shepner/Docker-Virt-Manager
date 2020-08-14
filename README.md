# Docker-Virt-Manager

Experimenting with running a Docker container running an X11 application, presented in VNC, and accessed HTTP via Guacamole.  All to keep from installing this mess directly on the server itself.

Leveraging the [linuxserver.io](https://www.linuxserver.io/) [docker-calibre repo](https://github.com/linuxserver/docker-calibre) since they already did the hard part resulting in the `lsiobase/guacgui` base image.

End-goal of running [virt-manager](https://virt-manager.org/)


Fetch
``` shell

```

Build
``` shell
sudo docker build -t test .
```

Run
``` shell
sudo docker run -it \
  -p 8080:8080 \
  -v /home/shepner/test/config:/config \
  test
```


