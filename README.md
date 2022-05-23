# Org Mode Reveal Template

This is a template repo for making presentations in org mode with reveal.js.

This is mostly to help me quickstart a presentation, but hopefully it might be useful to others.

Combine `./export.sh` with [entr](https://github.com/eradman/entr) to autorebuild the file on save and [live-reload](https://github.com/blaise-io/live-reload/) to refresh your browser when the index.html file changes and you have a live-preview.

## Multiplex

You can make multiplex work by following these steps:

1) Get a token from here: https://reveal-multiplex.glitch.me/token
2) Set the following variables:
```
#+REVEAL_MULTIPLEX_ID: <id>
#+REVEAL_MULTIPLEX_SECRET: <secret>
#+REVEAL_MULTIPLEX_URL: https://reveal-multiplex.glitch.me
```
3) Add `multiplex` to the plugins variable.
4) Optional: Change the `index.html` symlink to point at `talk_client.html`
5) Profit
