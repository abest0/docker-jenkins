FROM centos:centos7
MAINTAINER abest <abest@utilitas.io>

# RUN apt-get update && apt-get install -y -q --no-install-recommends\
#     ca-certificates\
#     curl \
#     wget \
#     && rm -rf /var/lib/apt/lists/*
#
# RUN apt-get update && apt-get install -y -q nginx
RUN yum -y update; yum clean all
RUN yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm; yum -y makecache
RUN yum -y install nginx-1.8.0


COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]
