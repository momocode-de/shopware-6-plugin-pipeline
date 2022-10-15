if [ -f "cypress-report/index.json" ]; then
    CYPRESS_FAILURES=$(cat cypress-report/index.json | jq '.stats.failures')

    if [ "${CYPRESS_FAILURES}" != "0" ]; then
        echo "At least one cypress test failed!"
        exit 1
    fi
fi
