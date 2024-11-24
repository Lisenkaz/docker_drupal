 # Используйте официальный образ Drupal
FROM drupal:latest

# Установите необходимые расширения PHP (если необходимо)
RUN docker-php-ext-install pdo pdo_mysql

# Установите рабочую директорию
WORKDIR /var/www/html

# Копируйте содержимое вашего проекта
COPY . .

# Установите права доступа
RUN chown -R www-data:www-data /var/www/html

# Откройте порт 80
EXPOSE 8080