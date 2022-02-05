FROM robertdebock/enterpriselinux
LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2022-01-03"

ENV container=docker
# Requirements go here
VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
