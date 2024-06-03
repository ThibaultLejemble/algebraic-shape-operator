FROM ubuntu:22.04

ARG UID
ARG GID
ARG USERNAME
ARG GROUPNAME

RUN apt-get update &&  \
    apt-get install -y \
    # core packages
    cmake              \
    g++                \
    git                \
    python3            \
    python3-pip        \
    # CGAL
    libcgal-dev        \
    libtbb-dev         \
    # Linux
    htop               \
    vim                \
    zsh

RUN pip3 install \
    numpy \
    pandas

RUN groupadd      \
    --gid ${GID}  \
    ${GROUPNAME}

RUN useradd       \
    --no-log-init \
    --uid ${UID}  \
    --gid ${GID}  \
    --create-home \
    --shell /usr/bin/zsh \
    ${USERNAME}

CMD [ "/usr/bin/zsh" ]%                                                                           *[main][~/dev/pcp]$ 
