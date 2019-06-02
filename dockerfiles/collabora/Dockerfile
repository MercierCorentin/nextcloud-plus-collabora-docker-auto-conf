FROM ubuntu:16.04

# Environment variables
ENV domain localhost
ENV LANG fr_FR.utf8
ENV LC_CTYPE fr_FR.utf8

# Setup scripts for LibreOffice Online
ADD /scripts/install-libreoffice.sh /
ADD /scripts/start-libreoffice.sh /
RUN bash install-libreoffice.sh

EXPOSE 9980

# Entry point
CMD bash start-libreoffice.sh
