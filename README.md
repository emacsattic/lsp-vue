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
(add-hook 'vue-mode-hook #'lsp-vue-mmm-enable)
```
`lsp-vue-mmm-enable` depends on [vue-mode](https://github.com/AdamNiederer/vue-mode) and will enable flycheck for every major-mode supported by `vue-mode`.

Also you can enable `lsp-vue` for any needed major-mode with call of `lsp-vue-enable` or with hook like this

``` emacs-lisp
(add-hook 'major-mode-hook #'lsp-vue-enable)
```


## Configuration

```
# with customize group

M-x customize-group RET lsp-vue # custom vetur and html configuration

# with lisp

(setq vetur.validation.template t)
```

see also: https://vuejs.github.io/vetur/
