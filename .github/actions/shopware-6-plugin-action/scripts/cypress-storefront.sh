if [ -d "tests/cypress/storefront" ]; then
    cd shopware
    ./psh.phar e2e:dump-db
    chown -R application:application .
    export CYPRESS_projectRoot=$(pwd)
    export CYPRESS_baseUrl=http://localhost:8000
    export CYPRESS_localUsage=1
    export CYPRESS_shopwareRoot=$(pwd)
    npm --prefix ../tests/cypress/storefront run cy:run:chrome -- -c numTestsKeptInMemory=0,watchForFileChanges=false,video=true --headless
    ./psh.phar e2e:cleanup
fi
