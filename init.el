;; C-h = Backspace
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)

;; load-pathで ~/.emacs.d を省略
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

; 文字コードとか
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)


;; el-get
(add-to-list 'load-path (locate-user-emacs-file "site-packages/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/elget-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle markdown-mode)

;; color-theme
(add-to-list 'load-path (locate-user-emacs-file "el-get/color-theme"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)
;(color-theme-billw)
;
;; (color-theme-simple-1)
