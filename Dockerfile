From ubuntu:focal

RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

RUN  useradd admin && echo "admin:admin" | chpasswd && adduser admin sudo
USER admin