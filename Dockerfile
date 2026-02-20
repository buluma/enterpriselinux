FROM robertdebock/enterpriselinux:8
LABEL maintainer="Michael Buluma"
LABEL build_date="2026-02-03"

ENV container=docker

# Install requirements.
RUN yum -y install sudo \
 && yum -y update \
 && yum -y install \
      initscripts \
      sudo \
      which \
      hostname \
      python38 \
      python38-pip \
      python38-pyyaml \
 && yum clean all

# Upgrade pip to latest version.
RUN pip3 install --upgrade pip

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
