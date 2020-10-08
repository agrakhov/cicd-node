FROM node:10-slim

RUN apt update \
  && apt install -y git jq curl wget \
  && apt autoremove -y \
  && apt clean \
  && rm -rf /var/lib/apt/lists/* \
  && curl -fsSL https://get.docker.com | bash \
  && wget -O /usr/local/bin/yq "https://github.com/mikefarah/yq/releases/download/3.4.0/yq_linux_amd64" \
  && chmod +x /usr/local/bin/yq

CMD ["bash"]
