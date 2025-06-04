#!/bin/sh

index=./talk.org

oxreveal=$(find ~/.emacs.d/elpa/ -type d -name "ox-reveal-*" -print -quit)
htmlize=$(find ~/.emacs.d/elpa/ -type d -name "htmlize-*" -print -quit)

progn="(progn
  (package-initialize)
  (add-to-list 'load-path \"$oxreveal\")
  (add-to-list 'load-path \"$htmlize\")
  (require 'ox-reveal)
  (org-babel-do-load-languages 'org-babel-load-languages '((python . t)))
  (setq org-confirm-babel-evaluate nil)
  (org-reveal-export-to-html))"

emacs --no-init-file --batch --visit "$index" --eval "$progn" --kill
