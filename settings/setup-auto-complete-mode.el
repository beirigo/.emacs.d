(ac-config-default)

(setq ac-delay 0.5)
(setq ac-menu-height 50)
(setq ac-use-quick-help nil)
(setq ac-use-comphist t)
(setq ac-ignore-case nil)
(setq ac-dwim t)
(setq ac-fuzzy-enable t)

(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'js-mode)

(provide 'setup-auto-complete-mode)
