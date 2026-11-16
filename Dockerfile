ARG BASE_CONTAINER=ghcr.io/ucsd-ets/datascience-notebook:2023.4-notebook7
FROM $BASE_CONTAINER

USER root
RUN apt-get update && apt-get -y install aria2 nmap traceroute

USER jovyan
RUN pip install --no-cache-dir \
    numpy==1.23.5 \
    pandas==1.5.3 \
    geopandas==0.14.4 \
    babypandas==0.1.5

CMD ["/bin/bash"]
