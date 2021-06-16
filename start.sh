#!/bin/bash

echo "Starting app .."
cd /src
composer install
php artisan migrate