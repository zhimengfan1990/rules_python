#!/bin/bash
set -e

REQUIREMENTS_TXT=(%{requirements_txt})
REQUIREMENTS_BZL="%{requirements_bzl}"
BUILD_AREA="%{directory}/build-directory"
PIP_CACHE="%{directory}/pip-cache"

REQUIREMENTS_BZL_TEMP=$(mktemp)
echo "Generating $REQUIREMENTS_BZL from ${REQUIREMENTS_TXT[@]}..."

# WAR for macOS: https://github.com/Homebrew/brew/issues/837
export HOME=$PWD
cat <<EOF > ./.pydistutils.cfg
[install]
prefix=
EOF

"%{python}" "%{piptool}" resolve \
    --name "%{name}" \
    "${REQUIREMENTS_TXT[@]/#/--input=}" \
    --output "$REQUIREMENTS_BZL_TEMP" \
    --output-format download \
    --directory $BUILD_AREA \
    --python "%{python_label}" \
    "$@" \
    -- %{pip_args} \
    --cache-dir "$PIP_CACHE"

mv "$REQUIREMENTS_BZL_TEMP" "$REQUIREMENTS_BZL"
echo "$REQUIREMENTS_BZL updated!"
