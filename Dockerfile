FROM jupyter/base-notebook

LABEL Description="Jupyter Bash"

USER jovyan

RUN  conda install -c conda-forge bash_kernel