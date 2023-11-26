FROM gitpod/workspace-python-3.9:2023-11-24-15-04-57
# update the version of the workspace to use a different version


# This env var is used to force the 
# rebuild of the Gitpod environment when needed
ENV TRIGGER_REBUILD 0

USER root

RUN apt-get update && \
    apt-get install -y wget git tree ssh nano sudo nmap man tmux curl joe && \
    apt-get clean && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* 

# Copy exercices content into the image
# COPY --chown=gitpod content/ /home/gitpod/dbt_audiance_measurment

USER gitpod

# Create empty .dbt directory otherwise dbt complains
RUN mkdir /home/gitpod/.dbt

# Set the path of dbt's profiles file.
ENV DBT_PROFILES_DIR=./profiles/

# Copy requirements file from host into Container.
COPY requirements.txt /tmp

# Install the requirements.
RUN cd /tmp && pip install -r requirements.txt