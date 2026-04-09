#!/usr/bin/env bash

set -o errexit;
set -o nounset;

# Since guida-lang/stdlib is treated specially by the compiler (it's always
# inserted as a dependency even when not declared explicitly), we use
# a bit of a hack to make the tests run against the local source code
# rather than the guida-lang/stdlib source fetched from package.guida-lang.org.

# Create a local directory where the compiler will look for the
# guida-lang/stdlib source code:

DIR="$(dirname $0)";

cd "$DIR";

export GUIDA_HOME="$PWD/.guida";
rm -rf "$GUIDA_HOME" && mkdir -p "$GUIDA_HOME";
rm -rf guida-stuff;

# Create a link to the git package
VERSION=$(node -e "console.log(require('../guida.json').version)")
CORE_LINK="${GUIDA_HOME}/1.0.0/packages/guida-lang/stdlib/${VERSION}"
CORE_GIT_DIR="$(dirname $PWD)"

echo;
echo "Linking $CORE_LINK to $CORE_GIT_DIR"
echo;
mkdir -p "$(dirname $CORE_LINK)"
ln -sv "${CORE_GIT_DIR}" "${CORE_LINK}"
rm -vf "${CORE_GIT_DIR}"/*.dat "${CORE_GIT_DIR}"/doc*.json

# Now we can run the tests against the symlinked source code for real

echo;
echo "running tests ...";
echo;

../../compiler-master/bin/index.js test "$@";
