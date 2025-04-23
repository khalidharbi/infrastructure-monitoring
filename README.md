# Infrastructure Monitoring with Prometheus, Grafana & Telegram Alerts

This project sets up a basic infrastructure monitoring stack using Prometheus, Grafana, and Node Exporter. It also includes alerting through Telegram.


## Tools Used

- Prometheus (metrics collection)
- Node Exporter (system metrics)
- Grafana (visualization)
- Telegram Bot (alerting)
- Podman (containers)
- RHEL9 (Linux OS)

## Project Structure
.
├── grafana                    # Contains Grafana configurations and alerting setup
│   ├── alert_rules.yml        # Custom alert rules to monitor system metrics
│   ├── dashboards             # Guide to import dashboards manually
│   │   └── instruction.md     # Markdown guide for importing dashboards into Grafana
│   └── Telegram_Bot           # Telegram integration files (token, chat ID, instructions)
├── node_exporter              # Instructions for setting up Node Exporter
│   └── instructions.md        # Steps to install and run node_exporter on target servers
├── prometheus                 # Prometheus configuration directory
│   └── prometheus.yml         # Main config file for Prometheus (includes scrape targets)
├── README.md                  # Main project documentation with setup steps
└── screenshots                # Visual documentation (used in README or GitHub page)
    ├── grafana_dashboard_11074.png  # Screenshot of imported dashboard (Linux metrics)
    ├── grafana_dashboard_1860.png   # Screenshot of Node Exporter Full dashboard
    ├── prometheus_targets.png       # Screenshot of Prometheus target status
    └── telegram_alert.png           # Example of a Telegram alert sent from Grafana


## ⚙️ Setup Overview

### 1. Node Exporter
Installed on monitored VMs:

wget https://github.com/prometheus/node_exporter/releases/download/v*/node_exporter-*.linux-amd64.tar.gz

# Run Prometheus
podman run -d --name prom -p 9090:9090 -v /home/student/prometheus:/etc/prometheus:Z prom/prometheus

# Run Grafana
podman run -d --name grafana -p 3000:3000 grafana/grafana

