;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 文字コードを指定してファイルを開く from GANAware Diary 1999/11/14
;;;
(defun find-file-with-coding-system (filename &optional coding-system)
  "Edit file FILENAME.
Switch to a buffer visiting file FILENAME,
creating one if none already exists.
Interactively, or if CODING-SYSTEM is non-nil in a call from Lisp,
the coding system of file FILENAME is assumed as CODING-SYSTEM."
  (interactive "FFind file: \nZCoding-system: ")
  (if coding-system
      (let ((coding-system-for-read coding-system))
        (find-file filename))
    (find-file filename)))
(define-key global-map [(control x) (control f)] 'find-file-with-coding-system)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; カーソル位置のファイル名 (フルパス) をコピー
;;;
(defun dired-extra-get-fullpath()
  "カーソル位置のファイル名 (フルパス) をコピー"
  (interactive)
  (if (eq major-mode 'dired-mode)
      (let ((fname (dired-get-filename nil t)))
        (kill-new fname)
        (message "%s" fname)
        )))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Dired で 関連付けられたファイルを F で起動する。
;;; http://uenox.infoseek.livedoor.com/meadow/
;;;

(defun dired-extra-open ()
  "Type '\\[dired-extra-open]': open the current line's file."
  (interactive)
  (if (eq major-mode 'dired-mode)
      (let ((fname (dired-get-filename nil t)))
		(call-process-shell-command (concat "open \"" fname "\""))
        (message "opening... %s" fname)
        )))


(add-hook 'dired-mode-hook
	  '(lambda ()
	     (define-key dired-mode-map "w" 'dired-extra-get-fullpath)
	     (define-key dired-mode-map "F" 'dired-extra-open)
	     )
	  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; wdired (build-in)
;;;
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
