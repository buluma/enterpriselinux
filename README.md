Docker Enterpriselinux
=====================

This Dockerfile can build containers capable to use systemd.

[![Build and Push Container](https://github.com/buluma/enterpriselinux/actions/workflows/docker-image.yml/badge.svg)](https://github.com/buluma/enterpriselinux/actions/workflows/docker-image.yml) ![Docker Pulls](https://img.shields.io/docker/pulls/buluma/enterpriselinux)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch |Debian Version|Docker image tag|
|-------|--------------|----------------|
| main     |latest            |latest              |
| 7 |7  | 7         |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  buluma/enterpriselinux:latest
```
