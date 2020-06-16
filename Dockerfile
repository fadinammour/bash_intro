FROM jupyter/base-notebook:python-3.7.6

LABEL Description="Jupyter Bash"

USER root
RUN apt-get update && \
    apt-get install screen && \
    apt-get clean

USER jovyan
RUN  conda install -c conda-forge bash_kernel

WORKDIR /home/jovyan/work