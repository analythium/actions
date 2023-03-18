#!/bin/sh -l

# Dont forget <https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action>
# $ git add entrypoint.sh
# $ git update-index --chmod=+x entrypoint.sh

echo "\n***\nTHIS IS USING THE PKGDOWN DIR\n***\n"

deps-cli all
Rscript -e 'devtools::check()'
echo "\n***\n---PKGDOWN---\n***\n"
Rscript -e 'pkgdown::build_site_github_pages(install=TRUE)'
