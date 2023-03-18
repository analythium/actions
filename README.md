# actions
GitHub Actions

`docker pull ghcr.io/analythium/actions:latest`

Example:

```yaml
on:
  push:
    branches:
      - main

name: test

jobs:
  check-r2u:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repo
        uses: actions/checkout@v3
        
      - name: Check
        uses: analythium/actions@v1.2
```