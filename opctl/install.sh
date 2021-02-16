#!/bin/bash

curl -L https://github.com/opctl/opctl/releases/download/0.1.41/opctl0.1.41.darwin.tgz | tar -xzv -C /usr/local/bin
opctl self-update