FROM debian:buster
RUN apt-get update && apt-get install -y gcc make git binutils libc6-dev gdb sudo cmake
RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user
