#!/usr/bin/env bash

dURL="https://www.python.org/ftp/python/${1}/Python-${1}"

echo -e "Python v${1} sha256 hashes\n"

echo "XZ tarball:"
curl -sSL "${dURL}.tar.xz" | sha256sum
echo ""

echo "Gzip tarball:"
curl -sSL "${dURL}.tgz" | sha256sum
