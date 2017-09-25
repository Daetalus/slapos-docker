FROM centos

RUN yum -y install wget \
    && yum -y install cronie \
    && yum -y install sudo \
    && wget http://deploy.erp5.cn/gnet/re6st \
    && sed -i '2061c\  is_package_installed ansible || install_package ansible.noarch' re6st

ENTRYPOINT [ "/usr/sbin/init" ]
