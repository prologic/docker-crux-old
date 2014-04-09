# CRUX Linux (http://crux.nu)
#
# Built from ISO
#
# VERSION: 3.0
# RELEASE: 4
#
# Last-Updated: 20140131)

FROM scratch
MAINTAINER James Mills <prologic@shortcircuitnet.au>

ADD rootfs.tar.xz /

RUN ports -u
RUN cd /usr/ports/core/openssl; pkgmk -d; pkgadd -u -f openssl#*.pkg.tar.gz
