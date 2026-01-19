(require 'auto-complete)
(require 'auto-complete-config)

(global-auto-complete-mode t)
(define-key ac-completing-map (kbd "C-n") 'ac-next)      ; C-nで次候補選択
(define-key ac-completing-map (kbd "C-p") 'ac-previous)  ; C-pで前候補選択
(define-key ac-completing-map (kbd "C-j") 'ac-complete)  ; C-jで決定
(setq ac-dwim t)  ; 空気読んでほしい

(ac-config-default)
(setq ac-auto-start 1)       ; 補完を開始する文字数
(setq ac-auto-show-menu 0.2) ; 補完リストが表示されるまでの時間
;; (setq ac-sources '(ac-source-yasnippet
;;                    ac-source-dictionary
;;                    ac-source-gtags
;;                    ac-source-words-in-buffer))

;; (add-to-list 'ac-modes 'javascript-mode)
;; (add-to-list 'ac-modes 'js2-mode)
;; (add-to-list 'ac-modes 'html-helper-mode)
;; (add-to-list 'ac-modes 'emacs-lisp-mode)
;; (add-to-list 'ac-modes 'yaml-mode)
;; (add-to-list 'ac-modes 'coffee-mode)
;; (add-to-list 'ac-modes 'typescript-mode)

;; ; for emacs-lisp-mode
;; (add-hook 'emacs-lisp-mode-hook
;;           '(lambda ()
;;              (add-to-list 'ac-sources 'ac-source-functions)
;;              (add-to-list 'ac-sources 'ac-source-symbols)))

;; ; for yaml-mode
;; (add-hook 'yaml-mode-hook
;;           '(lambda ()
;;              (setq ac-sources '(ac-source-words-in-buffer))))
