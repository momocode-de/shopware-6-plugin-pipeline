# Clone development template
git clone --depth 1 --single-branch -b v${SHOPWARE_VERSION} https://github.com/shopware/development shopware
rm -rf shopware/platform

# Clone platform
git clone --depth 1 --single-branch -b v${SHOPWARE_VERSION} https://github.com/shopware/platform shopware/platform

# Apply patch that fixes bugs for the test environment (PHPUnit)
cd shopware/platform
wget https://github.com/shopware/platform/commit/0e6cbc24383f0123c01f59bd9aae0a49ce739cca.patch
patch -p1 -N < 0e6cbc24383f0123c01f59bd9aae0a49ce739cca.patch || true

# Prepare overrides
cd ../..
cp ${ACTION_PATH}/.psh.yaml.override shopware