(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-enable-caching t)

(global-set-key (kbd "C-x f") 'helm-projectile-find-file)

(provide 'setup-helm-projectile)
