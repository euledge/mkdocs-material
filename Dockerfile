FROM squidfunk/mkdocs-material

LABEL maintainer "euledge"
USER root

RUN pip install --no-cache-dir fontawesome_markdown \
    plantuml-markdown \
    mkdocs-exclude \
    mkdocs-drawio-exporter \
    && rm -rf /tmp/*
