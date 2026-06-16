FROM clamav/clamav:1.4
RUN sed -i '/TCPSocket/d; /TCPAddr/d' /etc/clamav/clamd.conf && printf 'TCPSocket 3310\nTCPAddr 0.0.0.0\n' >> /etc/clamav/clamd.conf
ENTRYPOINT ["/init"]
