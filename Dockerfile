FROM lsiobase/guacgui

# Adapted from https://github.com/linuxserver/docker-calibre/blob/master/Dockerfile

RUN \
 echo "**** install runtime packages ****" && \
 apt-get update && \
 apt-get install -y --no-install-recommends \
        dbus \
        fcitx-rime \
        fonts-wqy-microhei \
        jq \
        libxkbcommon-x11-0 \
        python \
        python-xdg \
        ttf-wqy-zenhei \
        wget \
        xz-utils

RUN \
 echo "**** app install ****" && \
 apt-get update && \
 apt-get install -y --no-install-recommends \
#        virt-manager \
#        ssh-askpass-gnome
        firefox

RUN \
 dbus-uuidgen > /etc/machine-id && \
 echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

COPY root/ /
