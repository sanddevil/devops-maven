FROM php:7.2-apache
ARG workspace
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached 
COPY $workspace /var/www/html/.
COPY entry.sh /usr/local/bin/.  
RUN /bin/bash -c 'chown www-data:www-data /var/www/html/index.php'
RUN /bin/bash -c 'chmod +x /usr/local/bin/entry.sh'
