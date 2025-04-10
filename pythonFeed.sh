#!/usr/bin/env bash

# Update to latest pyenv version
curl -sSL "https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer" | bash

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

LATEST_VERSION=0
VERSION_LIST=$(pyenv install --list | sed 's/^  //' | grep '^[3]' | grep --invert-match 'dev\|a\|b\|t')

getPythonVersionLatest() {

    LATEST_VERSION=$(echo "$VERSION_LIST" | tail -1)
}

processLastVersion() {
    PROCESSED_LATEST_VERSION=$(echo "$LATEST_VERSION" | cut -f1,2 -d'.')
    VERSION_LIST=$(echo "$VERSION_LIST" | grep -v "$PROCESSED_LATEST_VERSION")
    generateVersions "$LATEST_VERSION"
    generateSearchTerms "PYTHON_VERSION" "$majorMinor"/Dockerfile '\'
      # shellcheck disable=SC2154
    directoryCheck "$majorMinor" "$SEARCH_TERM"
    if [[ $(eval echo $?) == 0 ]]; then
        echo "$LATEST_VERSION is valid"
        VERSIONS+=$LATEST_VERSION
        VERSIONS+=' '
    fi
}

while [ "${PROCESSED_LATEST_VERSION}" != "3.7" ]
do
    getPythonVersionLatest
    processLastVersion
done

if [ "$VERSIONS" != "" ]; then
    echo "generating cimg-python for versions: $VERSIONS"
    ./shared/release.sh $VERSIONS
else
    echo "No changes"
fi
