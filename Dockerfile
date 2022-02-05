FROM robertdebock/enterpriselinux
LABEL maintainer="Michael Buluma"
LABEL build_date="2022-02-05"

ENV container=docker

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
