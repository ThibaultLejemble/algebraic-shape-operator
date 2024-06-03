#/bin/bash
 
set -ex

PARAM_UID=$(id -u)
PARAM_GID=$(id -g)
PARAM_USERNAME=$(id -un)
PARAM_GROUPNAME=$(id -gn)

docker build                               \
    --build-arg UID=$PARAM_UID             \
    --build-arg GID=$PARAM_GID             \
    --build-arg USERNAME=$PARAM_USERNAME   \
    --build-arg GROUPNAME=$PARAM_GROUPNAME \
    -t aso - < Dockerfile