FROM eddelbuettel/r2u:22.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    ghostscript \
    lmodern \
    pandoc \
    pandoc-citeproc \
    qpdf \
    texinfo \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-plain-generic \
    texlive-science \
    texlive-xetex

RUN install.r \
    rmarkdown \
    knitr \
    tinytex \
    devtools \
    pkgdown
