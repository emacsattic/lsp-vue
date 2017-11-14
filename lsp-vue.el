;;; lsp-vue.el --- Vue support for lsp-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 Nikita Sivakov <cryptomaniac.512@gmail.com>

;; Author: Nikita Sivakov <cryptomaniac.512@gmail.com>
;; Version: 1.0
;; Package-Requires: ((lsp-mode "3.0"))
;; Keywords: vue vetur lsp
;; URL: https://github.com/cryptomaniac512/lsp-vue

;;; Commentary:

;; Vue support for lsp-mode using official vue-language-server.

;;; Code:

(require 'lsp-mode)

(defconst lsp-vue--get-root (lsp-make-traverser #'(lambda (dir)
							   (directory-files dir nil "package.json"))))

(lsp-define-stdio-client lsp-vue "vue"
			 lsp-vue--get-root '("vls"))

(provide 'lsp-vue)
;;; lsp-vue.el ends here
