FROM haproxy:1.5
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg.base
COPY run.sh /usr/local/bin/run
RUN chmod a+rx /usr/local/bin/run
RUN useradd haproxy
RUN mkdir -p /run/haproxy; chown haproxy:haproxy /run/haproxy
RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y socat
COPY enable.sh /usr/local/bin/ha-enable
COPY disable.sh /usr/local/bin/ha-disable
COPY status.sh /usr/local/bin/ha-status
RUN chmod a+x /usr/local/bin/ha-*
CMD /usr/local/bin/run
