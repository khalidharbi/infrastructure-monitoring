#!/bin/bash

NODE_EXPORTER_VERSION="1.8.1"
DOWNLOAD_URL="https://github.com/prometheus/node_exporter/releases/download/v$NODE_EXPORTER_VERSION/node_exporter-$NODE_EXPORTER_VERSION.linux-amd64.tar.gz"

cd /tmp
curl -LO "$DOWNLOAD_URL"

tar -xvf "node_exporter-$NODE_EXPORTER_VERSION.linux-amd64.tar.gz"

sudo cp "node_exporter-$NODE_EXPORTER_VERSION.linux-amd64/node_exporter" /usr/local/bin/

sudo tee /etc/systemd/system/node_exporter.service > /dev/null <<EOF
[Unit]
Description=Node Exporter
After=network.target

[Service]
User=nobody
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now node_exporter



