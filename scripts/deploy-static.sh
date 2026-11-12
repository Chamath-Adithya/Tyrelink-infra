#!/usr/bin/env bash
set -euo pipefail

: "${RELEASE_DIR:?Set RELEASE_DIR to the approved release directory}"
: "${FRONTEND_DIST:?Set FRONTEND_DIST to a built Astro dist directory}"

test -d "$FRONTEND_DIST"
mkdir -p "$RELEASE_DIR/frontend"
cp -a "$FRONTEND_DIST"/. "$RELEASE_DIR/frontend/"
ln -sfn "$RELEASE_DIR/frontend" /srv/tyrelink/frontend-current
echo "Frontend release installed; run the documented smoke tests before reload."
