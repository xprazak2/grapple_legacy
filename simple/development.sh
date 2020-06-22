#!/bin/bash
oc adm policy add-cluster-role-to-user cluster-admin developer
sudo pip install docker-py

# operator fragment
RELEASE_VERSION=v0.15.0
curl -OJL https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu
chmod +x operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu
sudo cp operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu /usr/local/bin/operator-sdk
rm operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu

# verify operator installation
operator-sdk version
