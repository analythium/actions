# actions
GitHub Actions

`docker pull ghcr.io/analythium/actions:latest`

Example:

```yaml
on:
  push:
    branches:
      - test

name: test

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repo
        uses: actions/checkout@v3
        
      - name: Check
        uses: analythium/actions/pkgdown@v1.5
```

Using the image, but not the action:

```yaml
on:
  push:
    branches:
      - test

name: test

jobs:
  test:
    runs-on: ubuntu-latest
    container: ghcr.io/analythium/deps:latest
    steps:

      - name: Checkout repo
        uses: actions/checkout@v3

      - name: Install dependencies
        run: deps-cli all

      - name: Check R package
        run: Rscript -e 'devtools::check()'

      - name: Build pkgdown site
        run: Rscript -e 'pkgdown::build_site_github_pages(install=TRUE)'

      - name: Deploy site
        uses: JamesIves/github-pages-deploy-action@v4
        with:
          branch: gh-pages
          folder: docs
          clean: true
```