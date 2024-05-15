FROM prom/prometheus:v2.44.0

COPY prometheus/prometheus.yml /etc/prometheus/prometheus.yml

ENTRYPOINT [ "prometheus", \
            "--config.file=/etc/prometheus/prometheus.yml", \
            "--storage.tsdb.path=/prometheus", \
            "--storage.tsdb.retention=365d", \
            "--web.console.libraries=/usr/share/prometheus/console_libraries", \
            "--web.console.templates=/usr/share/prometheus/consoles", \
            "--web.external-url=http://localhost:9090", \
            "--log.level=info", \
            "--log.format=logger:stderr" ] 

FROM grafana/grafana:9.5.2

COPY grafana/provisioning/datasources.yml /etc/grafana/provisioning/datasources.yml
# COPY provisioning/dashboards.yaml /etc/grafana/provisioning/dashboards.yaml

EXPOSE 3000

CMD ["grafana-server", "--allow-embedding"]
