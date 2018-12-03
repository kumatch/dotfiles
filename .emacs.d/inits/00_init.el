

;; 
;; 
;; 初期設定
;; 
;;

;; PATH
(require 'exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

; 上のツールバー非表示
(tool-bar-mode 0)

;; 行頭でもC-k1回で行削除する
(setq kill-whole-line t)

;; バックアップファイルを残さない
(setq make-backup-files nil)

;; ベルを鳴らさない
(setq ring-bell-function 'ignore)

;; 警告音を鳴らさない
(setq visible-bell t)

;; 1行ずつスクロール
(setq scroll-step 1)

;; ステータスに行番号＆列番号表示
(column-number-mode t)
(setq default-fill-column 72)

;; 行番号表示
;;(global-linum-mode)
;;(setq linum-format "%4d")

;; 折り返す
(setq truncate-partial-width-windows nil)

;; インデント設定
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(c-set-offset 'case-label '+)

;; narrowingを使う
(put 'narrow-to-region 'disabled nil)

;; スタートページ非表示
;;(setq inhibit-startup-message t)





(require 'package)

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")) ; ついでにmarmaladeも追加

; Initialize
(package-initialize)

; melpa.el
(require 'melpa)
