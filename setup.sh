# Install depdendencies
composer install

###
# Database migrations
###

# Create database
php bin/console doctrine:database:create

# Apply migrations
sh ./scripts/db/migrate.sh


