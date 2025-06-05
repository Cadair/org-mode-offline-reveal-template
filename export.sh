#!/bin/sh

index=./talk.org

progn="(progn
  (package-initialize)
  (use-package ox-reveal
    :ensure t
    :vc t
    :load-path \"$(pwd)/src/emacs/org-reveal/\")
  (use-package htmlize
    :ensure t
    :vc t
    :load-path \"$(pwd)/src/emacs/emacs-htmlize/\")
  (require 'ox-reveal)
  (org-babel-do-load-languages 'org-babel-load-languages '((python . t)))
  (setq org-confirm-babel-evaluate nil)
  (org-reveal-export-to-html))"

emacs --no-init-file --batch --visit "$index" --eval "$progn" --kill
