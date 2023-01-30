#!/bin/bash
set -e

echo "Installing Theme Kit"
curl -s https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py | sudo python

echo "Configuring Theme Kit"
theme configure --password=$SHOPIFY_APP_API_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $THEMEKIT_FLAGS

echo "Deploying Theme"
#! theme deploy -n --allow-live
theme new --password=$SHOPIFY_APP_API_PASSWORD --store=$SHOPIFY_STORE_URL --name= JB
