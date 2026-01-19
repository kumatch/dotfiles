(defconst my-elisp-directory "~/.emacs.d/site-lisp")
(dolist (dir (let ((dir (expand-file-name my-elisp-directory)))
               (list dir (format "%s%d" dir emacs-major-version))))
  (when (and (stringp dir) (file-directory-p dir))
    (let ((default-directory dir))
      (setq load-path (cons default-directory load-path))
      (normal-top-level-add-subdirs-to-load-path))))

;; homebrew で導入した emacs-cask を読み込む設定
(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

; Initialize
(package-initialize)

;; (require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; (require 'install-elisp)
;; (setq install-elisp-repository-directory "~/.emacs.d/site-lisp/")

(tool-bar-mode 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (exec-path-from-shell insert-shebang yasnippet yaml-mode web-mode use-package textile-mode stylus-mode smex smartparens scss-mode projectile prodigy popwin php-mode pallet migemo markdown-mode json-mode jade-mode init-loader go-eldoc go-autocomplete fuzzy elscreen editorconfig dockerfile-mode color-moccur coffee-mode anzu ag ac-js2)))
 '(rst-level-face-base-light 30))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rst-level-1-face ((t (:foreground "LightSkyBlue"))) t)
 '(rst-level-2-face ((t (:foreground "LightGoldenrod"))) t)
 '(rst-level-3-face ((t (:foreground "Cyan1"))) t)
 '(rst-level-4-face ((t (:foreground "chocolate1"))) t)
 '(rst-level-5-face ((t (:foreground "PaleGreen"))) t)
 '(rst-level-6-face ((t (:foreground "Aquamarine"))) t))
