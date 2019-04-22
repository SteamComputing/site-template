FROM postgres:alpine
RUN apk add --no-cache supervisor
RUN mkdir /etc/supervisor.d
RUN echo "0       *       *       *       *       /root/db/create_dump.sh" >> /etc/crontabs/root
COPY postgres_cron.ini /etc/supervisor.d/postgres_cron.ini
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

