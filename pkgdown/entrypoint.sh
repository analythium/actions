#!/bin/sh -l

# Dont forget <https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action>
# $ git add entrypoint.sh
# $ git update-index --chmod=+x entrypoint.sh

deps-cli all
Rscript -e 'devtools::document()'
Rscript -e 'devtools::check()'

Rscript -e 'devtools::install()'
Rscript -e 'devtools::build_readme()'
Rscript -e 'pkgdown::build_site_github_pages()'
