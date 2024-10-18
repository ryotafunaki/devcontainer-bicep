#!/bin/bash
# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.

# Bicep only supports the amd64 architecture.
ARCH=$(dpkg --print-architecture)
if [[ "$ARCH" != "amd64" ]]; then
    echo "Bicep is not available"
    exit 0
fi

# Install development tools
# See https://learn.microsoft.com/ja-jp/azure/azure-resource-manager/bicep/install#linux
curl -Lo bicep https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64
chmod +x ./bicep
mv ./bicep /usr/local/bin/bicep
exit 0
