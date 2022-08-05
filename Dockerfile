ARG IMAGE

FROM ${IMAGE} as parent

USER root
# Install ANSIBLE
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
