FROM grafana/grafana:9.5.2 as grafana_build

COPY provisioning/datasources.yml /etc/grafana/provisioning/datasources.yml
# COPY provisioning/dashboards.yaml /etc/grafana/provisioning/dashboards.yaml

EXPOSE 8080

CMD ["grafana-server", "--allow-embedding"]