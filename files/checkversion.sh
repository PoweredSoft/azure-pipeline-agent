#!/bin/sh
AZP_AGENT_PACKAGES=$(curl -LsS \
    -u user:$(echo "$AZP_TOKEN") \
    -H 'Accept:application/json;' \
    "$AZP_URL/_apis/distributedtask/packages/agent?platform=$TARGETARCH&top=1")

AZP_AGENT_PACKAGE_LATEST_URL=$(echo "$AZP_AGENT_PACKAGES" | jq -r '.value[0].downloadUrl')
echo $AZP_AGENT_PACKAGE_LATEST_URL
