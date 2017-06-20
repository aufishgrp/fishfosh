FROM centos:7
MAINTAINER Charles Zilm <ch@rleszilm.com>

## Install base packages
RUN yum install -y file
RUN yum install -y wget
RUN yum install -y epel-release

## Install tools
RUN yum install -y npm

RUN mkdir /src
WORKDIR /src

ENTRYPOINT ["npm"]
CMD ["start"]

