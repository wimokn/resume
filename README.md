# Résumé

LaTeX template for my personal resume

# Build using Docker

```shell
docker build --no-cache -t latexmk:tetex .
docker run --rm -i -v "$PWD":/data latexmk:tetex pdflatex resume.tex
```
