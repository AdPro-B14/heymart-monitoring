FROM prom/prometheus:v2.44.0 AS prometheus_build

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 8080

CMD [ "prometheus", \
            "--config.file=/etc/prometheus/prometheus.yml", \
            "--storage.tsdb.path=/prometheus", \
            "--storage.tsdb.retention=365d", \
            "--web.console.libraries=/usr/share/prometheus/console_libraries", \
            "--web.console.templates=/usr/share/prometheus/consoles", \
            "--web.external-url=http://localhost:8080", \
            "--web.listen-address=:8080" \
            "--log.level=info"] 