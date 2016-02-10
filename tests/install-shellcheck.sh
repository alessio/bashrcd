#!/bin/bash
sudo curl -Lso \
  /usr/bin/shellcheck \
  https://github.com/caarlos0/shellcheck-docker/releases/download/v0.4.3/shellcheck
sudo chmod +x /usr/bin/shellcheck
