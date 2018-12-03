;; global variables
(setq-default
 js2-global-externs
 '(
   ;; common
   "setTimeout" "clearTimeout" "setInterval" "clearInterval" "setImmediate"
   "console" "JSON"
   ;; "window" "location"  ;; あえて定義から外して見やすく。

   ;; nodejs
   "require" "__dirname" "__filename"
   ;;"module"  ;; あえて定義から外して見やすく

   ;; etc
   "__"
   "$"
   "buster" "sinon" "assert" "refute"
   ))

;; js ファイルは js2-mode で (cask autoload でやってくれない)
(add-to-list 'auto-mode-alist '("\\.jsx?$" . js2-mode))

;; node/es6 コード用
(setq js2-include-browser-externs nil)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(setq js2-highlight-external-variables nil)
(setq js2-include-jslint-globals nil)
