#!/bin/sh

index=./index.org

progn="(progn
  (package-initialize)
  (add-to-list 'load-path \"~/.emacs.d/elpa/28.0/develop/ox-reveal-20210411.1138/\")
  (require 'ox-reveal))"

emacs --batch --visit "$index" --eval "$progn" --kill
