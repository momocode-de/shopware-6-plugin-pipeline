apt update && apt install -y jq
npm install -g npm@8.3.2
npm config set legacy-peer-deps true
export CI=1
export SHOPWARE_SKIP_BUNDLE_DUMP=1
export SHOPWARE_SKIP_FEATURE_DUMP=1
export SHOPWARE_SKIP_ASSET_COPY=1
export SHOPWARE_SKIP_THEME_COMPILE=1
export DISABLE_ADMIN_COMPILATION_TYPECHECK=1
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1