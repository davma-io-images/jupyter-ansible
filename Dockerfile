ARG IMAGE
ARG NB_USER="jovyan"

FROM ${IMAGE} as parent

USER root
# Install ANSIBLE
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
RUN apt-get install -y sshpass

USER ${NB_UID}