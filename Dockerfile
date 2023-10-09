FROM debian
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        x11-apps \
    && apt clean all \
    && rm -rf /var/lib/apt/lists/*
ENV DISPLAY :0
CMD xeyes
