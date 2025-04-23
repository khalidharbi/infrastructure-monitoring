# Download and extract node_exporter
wget https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-*.linux-amd64.tar.gz
tar -xzf node_exporter-*.tar.gz
cd node_exporter-*/

# Run it in background
./node_exporter &

# Open firewall (if needed)
sudo firewall-cmd --add-port=9100/tcp --permanent
sudo firewall-cmd --reload

