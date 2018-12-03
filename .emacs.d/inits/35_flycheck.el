;; flycheck
;;
;; - golang
;;   go-lint だけサードパーティツールなので自分で導入
;;   (go get -u github.com/golang/lint/golint)
;;
;;

(add-hook 'after-init-hook #'global-flycheck-mode)

;; js2-mode で eslint による補助を受けるため、JSHint を無効にする
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-disabled-checkers '(javascript-jshint javascript-jscs))
    ))
;; jsx は web-mode
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              (flycheck-add-mode 'javascript-eslint 'web-mode)
              (flycheck-mode))))
