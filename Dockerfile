From ubuntu:22.04
# packetgeek - Nov 28, 2023

# Source: https://medium.com/@roberto.fernandez.perez/create-docker-base-image-for-legacy-linux-system-3f5f77acd740

# Force an update
RUN touch /tmp/shim-20231127

# Update everything already installed
RUN apt-get update && apt-get upgrade -y

# Install needed tools
RUN apt-get install -y bash \
  libguestfs-tools \
  qemu \
  vim \
  xz-utils
 
RUN mkdir /work

COPY exploit-education-phoenix-amd64-v1.0.0-alpha-3.tar.xz /work/exploit-education-phoenix-amd64-v1.0.0-alpha-3.tar.xz
WORKDIR /work
RUN tar xvf exploit-education-phoenix-amd64-v1.0.0-alpha-3.tar.xz
COPY startup.sh /startup.sh
RUN chmod a+x /startup.sh
WORKDIR /
RUN mv /work/exploit-education-phoenix-amd64/* /
RUN rm -R /work

CMD ["/startup.sh"]
#CMD ["bash"]
