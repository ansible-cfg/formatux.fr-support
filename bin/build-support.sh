#!/bin/bash

# depends : Asciidoctor-pdf
# Installation
# gem install --pre asciidoctor-pdf
# Ajouter le PATH dans votre $HOME/.bashrc :
# export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
DIRNAME=$(dirname $0)
SOURCES=$DIRNAME/../sources/
DEST=$DIRNAME/../build/
FILES=$(find $SOURCES -name Support*.adoc)
DATE=$(date +%x) # La date au format Local
# Generation des fichiers PDF
for file in $FILES
do
  echo "Debut de la compilation du fichier ${file}"
  asciidoctor-pdf                            \
    -a pdf-stylesdir="${SOURCES}/theme/"     \
    -d book                                  \
    -t                                       \
    -n                                       \
    -a pdf-style="asciidoctor"               \
    -a pdf-fontsdir="${SOURCES}/theme/fonts" \
    -a revdate="${DATE}"                     \
    -a lang="fr"                             \
    -a icons="font"                          \
    -a chapter-label="Chapitre"              \
    -a part-label="Partie "                  \
    -a doctype="book"                        \
    -a encoding="utf-8"                      \
    -a toc="preamble"                        \
    -a toc-title="Table des matières"        \
    -a part-title="Partie "                  \
    -a toclevels=3                           \
    -a numbered=""                           \
    -a docinfo=""                            \
    -a sectnumlevels=2                       \
    -a showtitle="titre"                     \
    -D $DEST ${file}
  echo "Fin de la compilation du fichier ${file}"
  echo "----------------------------------------"
  echo ""
done

