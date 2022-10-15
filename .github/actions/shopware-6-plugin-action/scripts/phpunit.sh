if [ -f "tests/phpunit.xml.dist" ]; then
    # ToDo: Coverage?
    PROJECT_ROOT=${GITHUB_WORKSPACE}/shopware PLUGIN_ROOT=${GITHUB_WORKSPACE}/shopware/custom/plugins/${PLUGIN_NAME} ./tests/tools/phpunit --configuration ./tests/phpunit.xml.dist
fi
