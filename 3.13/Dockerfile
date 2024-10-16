# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2024.02

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV PYENV_ROOT=/home/circleci/.pyenv \
	PATH=/home/circleci/.pyenv/shims:/home/circleci/.pyenv/bin:/home/circleci/.poetry/bin:$PATH \
	PYTHON_VERSION=3.13 \
	PIPENV_DEFAULT_PYTHON_VERSION=3.13

RUN sudo apt-get update && sudo apt-get install -y \
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
		python3-openssl \
		tk-dev \
		wget \
		xz-utils \
		zlib1g-dev && \
	curl -sSL "https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer" | bash && \
	sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN env PYTHON_CONFIGURE_OPTS="--enable-shared --enable-optimizations" pyenv install 3.13 && pyenv global 3.13

RUN python --version && \
	pip --version && \
	pip install --upgrade pip && \
	pip --version && \
	# This installs pipenv at the latest version
	pip install pipenv wheel && \
	pipenv --version && \
	# Install pipx
	pip install --user pipx

# This installs version poetry at the latest version. poetry is updated about twice a month.
RUN curl -sSL https://install.python-poetry.org | python -
