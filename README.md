Vue.js support for lsp-mode using [vls](https://github.com/vuejs/vetur/tree/master/server)

## Installation

First of all install [vue-language-server](https://github.com/vuejs/vetur/tree/master/server)

``` shell
# with npm
npm install vue-language-server -g

# or with yarn
yarn global add vue-language-server
```


Install [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode) first, and either clone
this repository. Add the following to your emacs configuration:

``` emacs-lisp
(require 'lsp-mode)
(require 'lsp-vue)
(add-hook 'vue-mode-hook #'lsp-vue-enable)
```
