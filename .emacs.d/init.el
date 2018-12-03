(defconst my-elisp-directory "~/.emacs.d/site-lisp")
(dolist (dir (let ((dir (expand-file-name my-elisp-directory)))
               (list dir (format "%s%d" dir emacs-major-version))))
  (when (and (stringp dir) (file-directory-p dir))
    (let ((default-directory dir))
      (setq load-path (cons default-directory load-path))
      (normal-top-level-add-subdirs-to-load-path))))

(require 'cask)
(cask-initialize)

; Initialize
(package-initialize)

;; (require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; (require 'install-elisp)
;; (setq install-elisp-repository-directory "~/.emacs.d/site-lisp/")

(tool-bar-mode 0)
