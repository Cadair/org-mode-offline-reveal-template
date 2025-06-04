#!/bin/sh

index=./talk.org

progn="(progn
  (package-initialize)
  (require 'use-package-ensure) ;; Load use-package-always-ensure
  (setq package-archives '((\"melpa\" . \"https://melpa.org/packages/\")
                           (\"org\" . \"https://orgmode.org/elpa/\")
                           (\"elpa\" . \"https://elpa.gnu.org/packages/\")))

  (use-package ox-reveal :ensure t)
  (use-package htmlize :ensure t)
  (require 'ox-reveal)
  (org-babel-do-load-languages 'org-babel-load-languages '((python . t)))
  (setq org-confirm-babel-evaluate nil)
  ;; Set more reveal options not supported by ox-reveal
  (defun cadair/org-reveal-scripts (scripts)
    (concat scripts \"<script>Reveal.configure({hash:true});</script>\"))
  (advice-add 'org-reveal-scripts :filter-return #'cadair/org-reveal-scripts)
  (org-reveal-export-to-html))"

emacs --no-init-file --batch --visit "$index" --eval "$progn" --kill
