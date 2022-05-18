FROM php:8.1.6-cli-alpine3.14

COPY composer.json /
    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    composer install
ENTRYPOINT ["php", "/vendor/bin/phpcs"]