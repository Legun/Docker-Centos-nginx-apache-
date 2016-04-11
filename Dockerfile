FROM centos: latest
RUN yum install epel-release
RUN yum install httpd

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install -y php56w php56w-opcache php56w-mysqlnd
RUN firewall-cmd --add-port=8080/tcp --permanent

run yum install nginx
run firewall-cmd --add-service=http --permanent
