FROM php:7.2-apache
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached 
COPY docroot/ /var/www/html/.
COPY entry.sh /usr/local/bin/.  
ENV AH_SITE_ENVIRONMENT devops
ENV APACHE_DOCUMENT_ROOT /var/www/html/docroot
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
RUN /bin/bash -c 'chown -R www-data:www-data /var/www/html/'
RUN /bin/bash -c 'chmod +x /usr/local/bin/entry.sh'
