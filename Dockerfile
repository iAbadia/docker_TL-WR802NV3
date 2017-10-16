FROM ioft/i386-ubuntu:14.04.3

MAINTAINER Iñaki Abadía <i.abadiaosta@gmail.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y make automake gawk bison flex libfakeroot fakeroot autoconf libtool perl

RUN useradd -ms /bin/bash user && echo 'user:resu' | chpasswd
USER user
WORKDIR /home/user

CMD ["/bin/bash"]
ENTRYPOINT ["linux32", "--"]