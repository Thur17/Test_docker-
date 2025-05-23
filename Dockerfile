FROM php:8-apache

WORKDIR ../

COPY ../* /var/www/html/

EXPOSE 80
EXPOSE 443

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Start Apache in the foreground
CMD ["apache2-foreground"]