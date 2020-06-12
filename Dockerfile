FROM alpine:latest

RUN wget -O /usr/local/bin/krucible https://github.com/Krucible/krucible-cli/releases/download/v0.1.5/krucible-linux-amd64
RUN chmod +x /usr/local/bin/krucible

RUN wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl

CMD ["/usr/local/bin/krucible"]
