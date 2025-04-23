## How to Import Grafana Dashboards

You can import ready-made dashboards into Grafana by following these steps:

### Option 1: Import from Grafana.com

1. Go to [https://grafana.com/grafana/dashboards](https://grafana.com/grafana/dashboards)
2. Search for "Node Exporter Full" (ID: `1860`) or any other dashboard you like.
3. Copy the dashboard ID (e.g., `1860`).
4. Open Grafana in your browser (e.g., `http://<host>:3000`)
5. In the left menu, go to **Dashboards → New → Import**
6. Paste the dashboard ID in the field.
7. Click **Load**, choose your Prometheus data source, and click **Import**.

### Option 2: Import from a JSON File

If someone gave you a `.json` file:

1. Go to **Dashboards → New → Import**
2. Click **Upload JSON file**
3. Choose the file (e.g., `node_exporter_dashboard.json`)
4. Select Prometheus as the data source
5. Click **Import**

### Recommended Dashboards

- Node Exporter Full: ID `1860`
- Linux System Metrics: ID `11074`
- Prometheus 2.0 Stats: ID `3662`

