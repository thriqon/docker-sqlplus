
FROM base/archlinux

RUN echo -e "[oracle]\nSigLevel = Optional TrustAll\nServer = http://linux.shikadi.net/arch/\$repo/\$arch/" >>/etc/pacman.conf
RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet && pacman --sync --noconfirm --noprogressbar --quiet oracle-instantclient-sqlplus
ENV ORACLE_HOME /usr
ENV USERNAME system
ENV PASSWORD oracle

CMD sqlplus "${USERNAME}/${PASSWORD}@${ORACLE_PORT_1521_TCP_ADDR}:${ORACLE_PORT_152_TCP_PORT}/xe"
