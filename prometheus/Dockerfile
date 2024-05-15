FROM prom/prometheus:v2.44.0 AS prometheus_build

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 9090

CMD [ "prometheus", \
            "--config.file=/etc/prometheus/prometheus.yml", \
            "--storage.tsdb.path=/prometheus", \
            "--storage.tsdb.retention=365d", \
            "--web.console.libraries=/usr/share/prometheus/console_libraries", \
            "--web.console.templates=/usr/share/prometheus/consoles", \
            "--web.external-url=http://localhost:9090", \
            "--log.level=info"] 