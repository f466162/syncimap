FROM python:2

ADD entrypoint.sh /entrypoint.sh

RUN useradd -m imaper && \
    python -m pip install --upgrade pip setuptools wheel && \
    pip install offlineimap && \
    chmod +x /entrypoint.sh

WORKDIR /home/imaper

USER imaper

ENTRYPOINT [ "/entrypoint.sh" ]
