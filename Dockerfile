FROM node:8-slim

RUN curl -fsSL https://get.docker.com | bash \
  && apt install -y git \
  && apt autoremove \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
