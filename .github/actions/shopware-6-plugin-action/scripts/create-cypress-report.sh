mkdir cypress-report
mkdir cypress-report/videos
mkdir cypress-report/json

# Administration results
if [ -d "tests/cypress/administration/cypress/results/json" ]; then
    cp -r tests/cypress/administration/cypress/results/json/* cypress-report/json
fi
if [ -d "tests/cypress/administration/cypress/videos" ]; then
    cp -r tests/cypress/administration/cypress/videos/* cypress-report/videos
fi

# Storefront results
if [ -d "tests/cypress/storefront/cypress/results/json" ]; then
    cp -r tests/cypress/storefront/cypress/results/json/* cypress-report/json
fi
if [ -d "tests/cypress/storefront/cypress/videos" ]; then
    cp -r tests/cypress/storefront/cypress/videos/* cypress-report/videos
fi

npm install mochawesome-merge mochawesome-report-generator

./node_modules/.bin/mochawesome-merge cypress-report/json/*.json -o cypress-report/index.json
./node_modules/.bin/marge cypress-report/index.json --reportDir cypress-report --assetsDir cypress-report/assets --reportPageTitle cypress-report/index.html

# ToDo: Report irgendwo hochladen

# https://medium.com/swlh/publish-your-cypress-test-report-with-github-actions-47248788713a