ARG IMAGE

FROM ${IMAGE} as parent

USER root
# Install ANSIBLE
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
RUN apt-get install -y sshpass

WORKDIR /home
RUN chown jovyan -R jovyan