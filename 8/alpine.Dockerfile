FROM node:8-alpine

RUN wget -O /usr/local/bin/yq "https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64" \
  && chmod +x /usr/local/bin/yq \
  && apk add --no-cache \
  jq \
  curl \
  openssl \
  docker \
  git

CMD ["sh"]
