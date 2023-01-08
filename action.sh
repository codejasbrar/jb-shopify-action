#!/bin/bash
set -e

echo "Installing Theme Kit"
curl -s https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py | sudo python

echo "Configuring Theme Kit"
theme configure --password=shptka_8799aeaef7c725cde428a327157e25c7 --store=shopera3.myshopify.com --themeid=141092454705 --dir=./ --ignored-file=config/settings_data.json --ignored-file=locales/*

echo "Deploying Theme"
theme deploy --allow-live
