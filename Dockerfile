FROM jupyter/base-notebook:python-3.7.6

LABEL Description="Jupyter Bash"

USER root
RUN yum -y install screen && rm -rf /var/cache/yum

USER jovyan
RUN  conda install -c conda-forge bash_kernel

WORKDIR /home/jovyan/work
