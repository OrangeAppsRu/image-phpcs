FROM php:8.1.6-cli-alpine3.14

RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && \
    curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar && \
    php phpcs.phar -h  && \
    php phpcbf.phar -h && \ 
    chmod 755 *.phar

ENTRYPOINT ["php", "/phpcs.phar"]