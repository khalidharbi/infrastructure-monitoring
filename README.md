# Infrastructure Monitoring with Prometheus, Grafana & Telegram Alerts

This project sets up a basic infrastructure monitoring stack using Prometheus, Grafana, and Node Exporter. It also includes alerting through Telegram.


## Tools Used

- Prometheus (metrics collection)
- Node Exporter (system metrics)
- Grafana (visualization)
- Telegram Bot (alerting)
- Podman (containers)
- RHEL9 (Linux OS)


## Setup Overview

### Node Exporter
Installed on monitored VMs:

run this script node_exporter/node_exporter.sh

### Run Prometheus
mkdir ~/prometheus  
put the prometheus/prometheus.yml file from this repo and edit it with your targets address  
podman run -d --name prom -p 9090:9090 -v ~/prometheus:/etc/prometheus:Z prom/prometheus  
access it in your web browser http://localhost:9090  


### Run Grafana
podman run -d --name grafana -p 3000:3000 grafana/grafana  
access it in your web browser http://localhost:9090  


