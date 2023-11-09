FROM debian
RUN apt-get -y update; apt-get -y install openarena-server
ENV HOSTNAME OpenArenaServer
RUN useradd -ms /bin/bash Debian-OpenArena
USER Debian-OpenArena
EXPOSE 27960/udp
EXPOSE 27950/udp
ENTRYPOINT ["/usr/games/openarena-server"]
CMD ["+map oa_dm1", "+exec", "server.cfg"]