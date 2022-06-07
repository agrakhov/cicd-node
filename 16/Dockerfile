FROM node:16-slim

RUN apt update \
  && apt install -y git jq curl wget \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
  && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
  && echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
  && apt update \
  && apt install -y docker-ce docker-ce-cli containerd.io \
  && wget -O /usr/local/bin/yq "https://github.com/mikefarah/yq/releases/download/3.4.1/yq_linux_amd64" \
  && chmod +x /usr/local/bin/yq \
  && apt autoremove -y \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
