# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v1.8.1

RUN curl -sLO https://github.com/argoproj/argo-cd/releases/download/${VERSION}/argocd-linux-amd64 && \
    chmod +x argocd-linux-amd64 && mv argocd-linux-amd64 /usr/local/bin/argocd

ENTRYPOINT ["bash"]
