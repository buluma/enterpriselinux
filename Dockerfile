FROM robertdebock/enterpriselinux
ENV container = docker

LABEL org.label-schema.schema-version=1.0 
      org.label-schema.name=Rocky Linux Base Image 
      org.label-schema.vendor=Rocky Enterprise Software Foundation 
      org.label-schema.license=BSD-3-Clause 
      org.opencontainers.image.title=Rocky Linux Base Image 
      org.opencontainers.image.vendor=Rocky Enterprise Software Foundation 
      org.opencontainers.image.licenses=BSD-3-Clause
      
CMD ["/bin/bash"]

LABEL maintainer = Robert de Bock <robert@meinit.nl>
LABEL build_date = 2022-02-05

VOLUME [/sys/fs/cgroup]
CMD ["/sbin/init"]
