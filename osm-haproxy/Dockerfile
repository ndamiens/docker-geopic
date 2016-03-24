FROM haproxy:1.5
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg.base
COPY run.sh /usr/local/bin/run
RUN chmod a+rx /usr/local/bin/run
RUN useradd haproxy
RUN mkdir -p /run/haproxy; chown haproxy:haproxy /run/haproxy
CMD /usr/local/bin/run
