FROM base/archlinux
RUN echo -e "[oracle]\nSigLevel = Optional TrustAll\nServer = http://linux.shikadi.net/arch/\$repo/\$arch/" >>/etc/pacman.conf
RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet
RUN pacman --sync --noconfirm --noprogressbar --quiet oracle-instantclient-sqlplus
ENV ORACLE_HOME /usr
CMD sqlplus "system/password@${ORACLE_PORT_1521_TCP_ADDR}:${ORACLE_PORT_1521_TCP_PORT}/xe"
