FROM robertdebock/enterpriselinux
LABEL maintainer="Michael Buluma"
LABEL build_date="2022-07-10"

ENV container=docker

# Install requirements.
RUN yum -y install sudo \
 && yum -y update \
 && yum -y install \
      initscripts \
      sudo \
      which \
      hostname \
      python3 \
      python3-pip \
      python3-pyyaml \
 && yum clean all

# Upgrade pip to latest version.
RUN pip3 install --upgrade pip

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
