FROM rancher/os-ubuntuconsole:v0.5.0-3
MAINTAINER Hai2u <hello@hi.com>

COPY ./xe-guest-utilities_7.0.0-24_all.deb /root/xe-guest-utilities.deb
RUN dpkg -i /root/xe-guest-utilities.deb
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/xe-daemon"]
