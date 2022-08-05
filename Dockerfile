ARG IMAGE

FROM ${IMAGE} as parent

USER root
# Install ANSIBLE
# https://github.com/ansible/ansible-jupyter-kernel
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
