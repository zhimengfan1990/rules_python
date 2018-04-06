#!/bin/sh
set -e

REQUIREMENTS_TXT="%{requirements_txt}"
REQUIREMENTS_BZL="%{requirements_bzl}"
RUNTIME_FIX="%{runtime_fix}"
BUILDTIME_FIX="%{buildtime_fix}"
BUILD_AREA="%{directory}/build"

if [ -z "$REQUIREMENTS_BZL" ]; then
    REQUIREMENTS_BZL=$(dirname $(realpath "$REQUIREMENTS_TXT"))/requirements.bzl
fi
REQUIREMENTS_BZL_TEMP="requirements.bzl.tmp"
echo "Generating $REQUIREMENTS_BZL from $REQUIREMENTS_TXT..."

rm -rf "$BUILD_AREA"

python "%{piptool}" resolve \
    --name "%{name}" \
    --input "$REQUIREMENTS_TXT" \
    --output "$REQUIREMENTS_BZL_TEMP" \
    --runtime-fix $RUNTIME_FIX \
    --buildtime-fix $BUILDTIME_FIX \
    --output-format download \
    --directory $BUILD_AREA -- %{pip_args}

cp "$REQUIREMENTS_BZL_TEMP" "$REQUIREMENTS_BZL"
echo "$REQUIREMENTS_BZL updated!"
