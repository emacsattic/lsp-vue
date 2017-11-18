;;; lsp-vue.el --- Vue support for lsp-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 Nikita Sivakov <cryptomaniac.512@gmail.com>

;; Author: Nikita Sivakov <cryptomaniac.512@gmail.com>
;; Version: 1.0
;; Package-Requires: ((emacs "25.1") (lsp-mode "3.0"))
;; URL: https://github.com/emacs-lsp/lsp-vue

;;; Commentary:

;; Vue support for lsp-mode using official vue-language-server.

;;; Code:

(require 'lsp-mode)

(defconst lsp-vue--get-root (lsp-make-traverser #'(lambda (dir)
							   (directory-files dir nil "package.json"))))

(lsp-define-stdio-client lsp-vue "vue"
			 lsp-vue--get-root '("vls"))

(defun lsp-vue-mmm-enable ()
  "Enable lsp-vue for all major-modes supported by ‘vue-mode’."
  (interactive)
  (lsp-vue-enable)
  (when (and lsp-enable-flycheck (featurep 'lsp-flycheck) (featurep 'vue-mode))
    (require 'vue-mode)
    (dolist (mode-settings vue-modes)
      (lsp-flycheck-add-mode (plist-get mode-settings ':mode)))))

(provide 'lsp-vue)
;;; lsp-vue.el ends here
