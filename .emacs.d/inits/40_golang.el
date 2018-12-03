;;; 40_golang.el -- golang
;;;
;;; 構文チェックは flycheck の方に任せる。
;;; -------------------------------------------------------------------

;; セーブと共に go fmt
(add-hook 'before-save-hook 'gofmt-before-save)

(require 'go-autocomplete)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)

;; goimports, goreturns
;;
;; https://godoc.org/golang.org/x/tools/cmd/goimports
;; https://github.com/sqs/goreturns
;;(setq gofmt-command "goreturns")
(setq gofmt-command "gofmt")

