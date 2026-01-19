;; http://code.google.com/p/yasnippet/

;; (require 'yasnippet)
;; (require 'dropdown-list)

;; ; 非GUIにする
;; (setq yas/prompt-functions '(yas/dropdown-prompt))


;; (set-face-background 'yas/field-highlight-face "#404040")

;; (setq yas/trigger-key "C-;")
;; (setq yas/next-field-key "TAB")
;; (setq yas/prev-field-key "<S-tab>")
;; ;; (define-key yas/minor-mode-map (kbd "C-x i i") 'yas/insert-snippet)
;; ;; (define-key yas/minor-mode-map (kbd "C-x i f") 'yas/find-snippets)
;; ;; (define-key yas/minor-mode-map (kbd "C-x i n") 'yas/new-snippet)
;; ;; (define-key yas/minor-mode-map (kbd "C-x i v") 'yas/visit-snippet-file)
;; ;; (define-key yas/minor-mode-map (kbd "C-x i e") 'yas/expand)

;; ;; コメントやリテラルではスニペットを展開しない
;; (setq yas/buffer-local-condition
;;       '(or (not (or (string= "font-lock-comment-face"
;;                              (get-char-property (point) 'face))
;;                     (string= "font-lock-string-face"
;;                              (get-char-property (point) 'face))))
;;            '(require-snippet-condition . force-in-comment)))

;; (yas/initialize)
;; (setq yas/root-directory "~/.emacs.d/site-lisp/snippets")
;; (yas/load-directory yas/root-directory)
