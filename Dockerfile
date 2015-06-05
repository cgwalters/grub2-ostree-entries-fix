FROM fedora:22
RUN curl -v -L https://raw.githubusercontent.com/cgwalters/ostree/3f4548e4681766d83b6cbb1cb813b1a70ec4419b/misc/grub2-entries-fix.py > /usr/bin/grub2-entries-fix && chmod a+x /usr/bin/grub2-entries-fix
LABEL RUN docker run --rm -ti --privileged -v /:/host IMAGE /usr/bin/grub2-entries-fix --sysroot=/host
CMD ["/usr/bin/grub2-entries-fix"]

