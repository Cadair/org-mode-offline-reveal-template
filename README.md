# Org Mode Reveal Template

This is a template repo for making presentations in org mode with reveal.js.

This is mostly to help me quickstart a presentation, but hopefully it might be useful to others.

## Setup

1. use template button
2. clone new repo locally
3. remember to also checkout the submodules
4. edit talk.org
5. Run org export to reveal (see the `export.sh` script for an example)
6. Open index.html in a browser.


## GitHub Pages

This template includes a workflow to build the talk and publish to GitHub pages.

To enable this you need to go into GitHub settings and [enable pages deployments from GitHub actions](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow)


## Live preview

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
