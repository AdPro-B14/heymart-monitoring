FROM prom/prometheus:v2.44.0

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 8080

ENTRYPOINT [ "prometheus", \
            "--config.file=/etc/prometheus/prometheus.yml", \
            "--storage.tsdb.path=/prometheus", \
            "--storage.tsdb.retention=365d", \
            "--web.console.libraries=/usr/share/prometheus/console_libraries", \
            "--web.console.templates=/usr/share/prometheus/consoles", \
            "--web.listen-address=:8080", \
            "--web.external-url=http://localhost:8080", \
            "--log.level=info"] 