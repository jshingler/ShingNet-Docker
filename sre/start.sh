docker compose -f docker-compose.base.yaml \
               -f docker-compose.prometheus.yaml \
               -f docker-compose.alertmanager.yaml \
               -f docker-compose.loki.yaml \
               -f docker-compose.tempo.yaml \
               -f docker-compose.grafana.yaml up -d
