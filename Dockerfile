FROM squidfunk/mkdocs-material

LABEL maintainer "euledge"
USER root

RUN pip install --no-cache-dir plantuml-markdown \
    mkdocs-exclude \
    mkdocs-drawio-exporter \
    && rm -rf /tmp/*

# Set working directory
WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
