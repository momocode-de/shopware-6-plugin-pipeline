# Install shopware
cd shopware
composer config --no-plugins allow-plugins.bamarni/composer-bin-plugin true
./psh.phar init-composer
php dev-ops/generate_ssl.php
./psh.phar init-database
./psh.phar init-shopware
./psh.phar administration:init
./psh.phar storefront:init
bin/console plugin:install --activate ${PLUGIN_NAME}
./psh.phar init-test-databases
bin/console theme:change --all Storefront
bin/console cache:clear
export WEB_DOCUMENT_ROOT=$(pwd)/public
/entrypoint supervisord > /dev/null 2>&1 &
chown -R application:application .