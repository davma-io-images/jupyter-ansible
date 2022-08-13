ARG IMAGE
ARG NB_UID="100"

FROM ${IMAGE} as parent

USER root
# Install ANSIBLE
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install
RUN apt-get install -y sshpass

# RUN chmod -R 777 /home/jovyan/
# WORKDIR /home
# RUN chown jovyan -R jovyan

# EXPOSE 8888

# # Configure container startup
# ENTRYPOINT ["tini", "-g", "--"]
# CMD ["start-notebook.sh"]