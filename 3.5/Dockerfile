# vim:set ft=dockerfile:

FROM cimg/base:2019.11

LABEL maintainer="CircleCI Community/Partner Engineering <community-partner@circleci.com>"

ENV PVENV_ROOT=$HOME/.pyenv \
	PATH=/root/.pyenv/shims:/root/.pyenv/bin:$PATH

RUN apt-get update && apt-get install -y \
		build-essential \
		ca-certificates \
		curl \
		git \
		libbz2-dev \
		liblzma-dev \
		libncurses5-dev \
		libncursesw5-dev \
		libreadline-dev \
		libffi-dev \
		libsqlite3-dev \
		libssl-dev \
		libxml2-dev \
		libxmlsec1-dev \
		llvm \
		make \
		python-openssl \
		tk-dev \
		wget \
		xz-utils \
		zlib1g-dev && \
	curl https://pyenv.run | bash && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pyenv install 3.5.8 && pyenv global 3.5.8

RUN python --version && \
	pip --version

WORKDIR /root/project
