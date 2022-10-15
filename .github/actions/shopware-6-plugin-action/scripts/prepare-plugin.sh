# Install plugin composer dependencies
if [ -f "shopware/custom/plugins/${PLUGIN_NAME}/composer.json" ]; then
    composer install --working-dir=shopware/custom/plugins/${PLUGIN_NAME}
fi