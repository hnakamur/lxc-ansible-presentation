#!/bin/sh
if [ ! -d .git ]; then
  git init
fi
bundle install --jobs 4 --path vendor/bundle --binstubs vendor/bin
if [ ! -d asciidoctor-backends ]; then
  git submodule add https://github.com/asciidoctor/asciidoctor-backends.git asciidoctor-backends
fi
if [ ! -d decks.js ]; then
  git submodule add https://github.com/imakewebthings/deck.js.git deck.js
fi
