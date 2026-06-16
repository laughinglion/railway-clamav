FROM clamav/clamav:1.4
RUN printf 'TCPSocket 3310\nTCPAddr ::\n' >> /etc/clamav/clamd.conf
ENTRYPOINT ["/init"]
