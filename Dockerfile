FROM debian:jessie

MAINTAINER rabidang3ls@gmail.com

RUN apt-get update \
	&& apt-get install -y --no-install-recommends ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

ADD cadvisor /usr/bin/cadvisor

EXPOSE 8080

ENTRYPOINT ["/usr/bin/cadvisor", "-logtostderr"]
