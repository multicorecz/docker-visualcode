FROM debian:stretch

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget curl nano apt-transport-https ca-certificates unzip && \
	apt-get update && apt-get install -y \
		curl \
		git && \
	curl -fsSL https://code-server.dev/install.sh | sh

WORKDIR /srv

EXPOSE 8080

CMD code-server
