#/bin/bash
 
set -ex

PARAM_UID=$(id -u)
PARAM_GID=$(id -g)
PARAM_USERNAME=$(id -un)
PARAM_HOME=${HOME}

docker run -it                        \
    --privileged   	                  \
    --user ${PARAM_UID}:${PARAM_GID}  \
    --mount type=bind,src=${PARAM_HOME},dst=/home/${PARAM_USERNAME} \
    aso