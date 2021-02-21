FROM squidfunk/mkdocs-material

LABEL maintainer "euledge"
USER root

RUN pip install --no-cache-dir plantuml-markdown \
    mkdocs-exclude \
    mkdocs-drawio-exporter \
    && rm -rf /tmp/*
