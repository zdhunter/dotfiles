#!/bin/sh

# ensure bdftopcf is installed
if ! command -v bdftopcf > /dev/null; then
    echo 'error : install bdftopcf first' >&2
    exit 1
fi

for font in *.bdf; do
    bdftopcf "$font" > "${font%\.*}.pcf"
done
