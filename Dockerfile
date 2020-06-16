FROM jupyter/base-notebook:python-3.7.6

LABEL Description="Jupyter Bash"

USER root
RUN sudo apt-get update && \
    sudo apt-get install screen && \
    sudo apt-get clean

USER jovyan
RUN  conda install -c conda-forge bash_kernel

WORKDIR /home/jovyan/work
