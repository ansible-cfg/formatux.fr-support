#!/bin/bash

# depends : Asciidoctor-pdf
# Installation
# gem install --pre asciidoctor-pdf
# Ajouter le PATH dans votre $HOME/.bashrc :
# export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
# $1 = chemin vers le chemin de build
DIRNAME=$(dirname $0)
SOURCES=$DIRNAME/../sources/
DEST=$DIRNAME/../$1/
WEBSITE=$DIRNAME/../siteweb/
FILES=$(find $SOURCES -name *.adoc)
DATE=$(date +%x) # La date au format Local

# Test si un argument est fourni
if [ $# -eq 0 ]
  then
    echo "Aucun argument fourni : public ou build"
    exit 1
fi

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

if test "$1" = "public"
then
  FILES=$(find $WEBSITE -name *.adoc)
  for file in $FILES
  do
    echo "Debut de la compilation du fichier ${file}"
    asciidoctor -D $DEST ${file}
    echo "Fin de la compilation du fichier ${file}"
    echo "----------------------------------------"
    echo ""
  done
fi
