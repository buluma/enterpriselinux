FROM robertdebock/enterpriselinux
LABEL maintainer="Michael Buluma"
LABEL build_date="2022-02-05"

ENV container=docker

# RUN zypper install -y dbus-1 systemd-sysvinit && \
#    cd /usr/lib/systemd/system/sysinit.target.wants/; \
#    for i in *; do [ $i = systemd-tmpfiles-setup.service ] || rm -f $i; done ; \
#    rm -f /usr/lib/systemd/system/multi-user.target.wants/* ; \
#    rm -f /etc/systemd/system/*.wants/* ; \
#    rm -f /usr/lib/systemd/system/local-fs.target.wants/* ; \
#    rm -f /usr/lib/systemd/system/sockets.target.wants/*udev* ; \
#    rm -f /usr/lib/systemd/system/sockets.target.wants/*initctl* ; \
#    rm -f /usr/lib/systemd/system/basic.target.wants/* ; \
#    rm -f /usr/lib/systemd/system/anaconda.target.wants/*
    
RUN /bin/sh -c cd /lib/systemd/system/sysinit.target.wants/ ; \
	for i in * ; do [ $i = systemd-tmpfiles-setup.service ] || rm -f $i ; done ; \
	rm -f /lib/systemd/system/multi-user.target.wants/* ; \
	rm -f /etc/systemd/system/*.wants/* ; \
    rm -f /lib/systemd/system/local-fs.target.wants/* ; \
	rm -f /lib/systemd/system/sockets.target.wants/*udev* ; \
	rm -f /lib/systemd/system/sockets.target.wants/*initctl* ; \
	rm -f /lib/systemd/system/basic.target.wants/* ; \
	rm -f /lib/systemd/system/anaconda.target.wants/* # buildkit

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
