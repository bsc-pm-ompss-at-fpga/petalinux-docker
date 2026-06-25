#!/bin/bash

groupadd --gid "${HOST_GID:-1000}" builder
useradd --shell /bin/bash --gid "${HOST_GID:-1000}" --uid "${HOST_UID:-1000}" builder

mkdir -p /yocto/dl /yocto/ss
chown -R builder:builder /yocto/dl /yocto/ss

exec gosu builder /opt/user_entrypoint.sh "$@"
