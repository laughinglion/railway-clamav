FROM clamav/clamav:1.4
RUN printf 'TCPSocket 3310\nTCPAddr ::\n' >> /clamav/etc/clamav/clamd.conf
ENTRYPOINT ["/init"]
