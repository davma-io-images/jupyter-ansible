ARG IMAGE

FROM ${IMAGE} as parent

USER root
WORKDIR /

# Install ANSIBLE
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
RUN apt-get install -y sshpass

# HashiCorp Vault API client
RUN pip install hvac

RUN chmod -R 777 /home/jovyan/

USER jovyan
WORKDIR /home/jovyan

# RUN chmod -R 777 /home/jovyan/
# WORKDIR /home
# RUN chown jovyan -R jovyan

# EXPOSE 8888

# # Configure container startup
# ENTRYPOINT ["tini", "-g", "--"]
# CMD ["start-notebook.sh"]