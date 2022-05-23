#!/bin/sh

index=./talk.org

emacsversion=$(emacs --version | tr " " "\n" | sed -n 3p | sed 's|\(.*\)\..*|\1|')
oxreveal=$(find ~/.emacs.d/elpa/$emacsversion/develop/ -type d -name "ox-reveal-*" -print -quit)

progn="(progn
  (package-initialize)
  (add-to-list 'load-path \"$oxreveal\")
  (require 'ox-reveal)
  (org-reveal-export-to-html))"

emacs --batch --visit "$index" --eval "$progn" --kill
