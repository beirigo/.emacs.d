;;; package --- Key Bindings

;;; Commentary:
;;; My custom key bindings

;;; Code:

(setq ns-function-modifier 'hyper)

(when (eq system-type 'darwin)  ; mac specific bindings
  (setq mac-right-command-modifier 'meta ; right cmd = meta
        mac-right-option-modifier 'hyper))


;; Ace Jump Mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Multiple Cursors
(global-set-key (kbd "C-; C-;") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-c") 'mc/mark-all-like-this)

;; Insert into next line
(global-set-key (kbd "C-o") (lambda () (interactive)(end-of-line)(newline-and-indent)))
(global-set-key (kbd "C-S-o") (lambda () (interactive)(forward-line -1)(end-of-line)(newline-and-indent)))


;; Kill current line
(global-set-key (kbd "C-S-k") 'kill-whole-line)

;; Window move
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Resize Windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Comment/uncomment line override
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c C-p") 'evilnc-comment-or-uncomment-paragraphs)

;; Smex
(global-set-key (kbd "M-x") 'smex)

;; Ivy
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x f") 'counsel-projectile-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c k") 'my/counsel-ag-in-project)

(global-set-key (kbd "C-c r") 'sp-rewrap-sexp)

(provide 'key-bindings)

;;; key-bindings.el ends here
