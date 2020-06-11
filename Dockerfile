FROM alpine:latest

RUN wget -O /usr/local/bin/krucible https://github.com/Krucible/krucible-cli/releases/download/v0.1.4/krucible-linux-amd64
RUN chmod +x /usr/local/bin/krucible

CMD ["/usr/local/bin/krucible"]
