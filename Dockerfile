FROM php:8.0
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /app
COPY . /app
COPY --from=composer:2.1 /usr/bin/composer /usr/bin/composer

CMD php artisan serve --host=0.0.0.0 --port=8181
EXPOSE 8181