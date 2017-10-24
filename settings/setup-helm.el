(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

(setq helm-display-header-line nil)
(set-face-attribute 'helm-source-header nil :height 0.1)
(helm-autoresize-mode 1)

(setq helm-autoresize-max-height 30)
(setq helm-autoresize-min-height 30)

(setq helm-split-window-in-side-p t)

(provide 'setup-helm)
