FROM zzzfree/ubuntu:aliyun

RUN apt-get update && apt-get -y install curl php5 

RUN /usr/bin/curl -sS https://getcomposer.org/installer |/usr/bin/php
RUN /bin/mv composer.phar /usr/local/bin/composer 
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app