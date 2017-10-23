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
(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)
;; Smex
(global-set-key (kbd "M-x") 'smex)

(provide 'key-bindings)

;;; key-bindings.el ends here
