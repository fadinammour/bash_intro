FROM jupyter/base-notebook:python-3.7.6

LABEL Description="Jupyter Bash"

USER jovyan

RUN  conda install -c conda-forge bash_kernel

RUN apt-get update && \
    apt-get install screen && \
    apt-get clean

WORKDIR /home/jovyan/work