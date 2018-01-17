# Archlinux + texlive + biber

I needed an up-to-date version of biber to match my development environment to
build my CV, so here it is.  Built on
[`base/archlinux`](https://hub.docker.com/r/base/archlinux/), with texlive,
biber, and make.

Inspired by [`blang/latex-docker`](https://github.com/blang/latex-docker).

## Installation

From [docker hub](https://hub.docker.com/r/davekleinschmidt/latex/):

```bash
docker pull davekleinschmidt/latex
```

## Use

```bash
cd /my/latex/project
docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/data davekleinschmidt/latex latexmk mypaper.tex
```

Or roughly equivalently (copied from
[blang/latex-docker](https://github.com/blang/latex-docker)):

```bash
./dockercmd.sh latexmk mypaper.tex
```
