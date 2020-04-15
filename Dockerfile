FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install wget gnupg -y
RUN mkdir -p /etc/apt/sources.list.d
RUN  wget -O - https://content.runescape.com/downloads/ubuntu/runescape.gpg.key | apt-key add -
RUN echo "deb https://content.runescape.com/downloads/ubuntu trusty non-free" > /etc/apt/sources.list.d/runescape.list
RUN apt-get update
RUN apt-get install runescape-launcher -y
CMD /usr/share/games/runescape-launcher/runescape