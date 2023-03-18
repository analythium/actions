#!/bin/sh -l

# Dont forget <https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action>
# $ git add entrypoint.sh
# $ git update-index --chmod=+x entrypoint.sh

echo "THIS IS USING THE TEST DIR"

deps-cli all
Rscript -e 'devtools::check()'
