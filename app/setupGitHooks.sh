#!/usr/bin/env bash

# Linking pre-push's script to `pre-push.sh` shell
mkdir -p ../.git/hooks; echo './pre_push.sh' > ../.git/hooks/pre-push; chmod +x ../.git/hooks/pre-push;

# Sign the flag to done status
echo "setup.githooks = true" >> ../local.properties
