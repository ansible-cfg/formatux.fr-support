#!/bin/bash

# depends : Asciidoctor-pdf
# Installation
# gem install --pre asciidoctor-pdf
# Ajouter le PATH dans votre $HOME/.bashrc :
# export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
DIRNAME=$(dirname $0)
SOURCES=$DIRNAME/../sources/
FILES=$(find $SOURCES -name *.adoc)

# Generation des fichiers PDF
for file in $FILES
do
  asciidoctor-pdf -b pdf -D ../build/ $file
done
