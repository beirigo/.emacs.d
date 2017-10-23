(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-enable-caching t)

(global-set-key (kbd "C-x f") 'helm-projectile)

(provide 'setup-helm-projectile)
