###
# Database migrations
###

# Create migration files in directory ./migrations
php bin/console doctrine:migrations:diff

# Apply migrations
php bin/console doctrine:migrations:migrate


