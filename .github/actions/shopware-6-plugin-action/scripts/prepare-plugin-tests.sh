# Install dependencies of administration test suite
if [ -f "tests/cypress/administration/package.json" ]; then
    npm install --prefix tests/cypress/administration
fi

# Install dependencies of storefront test suite
if [ -f "tests/cypress/storefront/package.json" ]; then
    npm install --prefix tests/cypress/storefront
fi