;; Using C-h as Backspace
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)


;; make it ease to call .emacs.d
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
(add-to-list 'load-path (locate-user-emacs-file "site-packages/el-get"))
(require 'el-get)
(setq el-get-dir (locate-user-emacs-file "site-packages"))

;; mask password inputs with symbols
(add-hook 'shell-model-hook
	  #'(lambda ()
	      (setq comint-password-prompt-regexp
		    (replace-regexp-in-string "for \\[\\^:\\]\\+" "for .+"
					      comint-password-prompt-regexp t t))))


;; color theme
(load-theme 'wombat)

;; swap Command <-> Option (for Mac)
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; hide tool-bar, menu-bar
(tool-bar-mode -1)
(menu-bar-mode -1)
