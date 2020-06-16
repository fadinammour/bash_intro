FROM jupyter/base-notebook:python-3.7.6

LABEL Description="Jupyter Bash"

USER root
RUN apt-get update && \
    apt-get -y install screen && \
    apt-get clean
    export TERM='vt100'

USER jovyan
RUN  conda install -c conda-forge bash_kernel

WORKDIR /home/jovyan/work
