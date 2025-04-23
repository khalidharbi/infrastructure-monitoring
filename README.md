# Infrastructure Monitoring with Prometheus, Grafana & Telegram Alerts

This project sets up a basic infrastructure monitoring stack using Prometheus, Grafana, and Node Exporter. It also includes alerting through Telegram.


## Tools Used

- Prometheus (metrics collection)
- Node Exporter (system metrics)
- Grafana (visualization)
- Telegram Bot (alerting)
- Podman (containers)
- RHEL9 (Linux OS)


## ⚙️ Setup Overview

### 1. Node Exporter
Installed on monitored VMs:

wget https://github.com/prometheus/node_exporter/releases/download/v*/node_exporter-*.linux-amd64.tar.gz

# Run Prometheus
podman run -d --name prom -p 9090:9090 -v /home/student/prometheus:/etc/prometheus:Z prom/prometheus

# Run Grafana
podman run -d --name grafana -p 3000:3000 grafana/grafana

