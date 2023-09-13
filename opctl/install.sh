#!/bin/bash

### TODO don't do the curl thing if it's already installed
test -e /usr/local/bin/opctl || curl -L https://github.com/opctl/opctl/releases/latest/download/opctl-darwin-arm64.tgz | tar -xzv -C /usr/local/bin
sudo opctl self-update
