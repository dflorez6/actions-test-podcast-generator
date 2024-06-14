FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

# Copy files from repository to the Docker image (virutal machine)
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Specify the Entry Point for this project. File that will run once the machine finish procurring
ENTRYPOINT [ "/entrypoint.sh" ]


