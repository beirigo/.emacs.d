(ivy-mode 1)
(counsel-projectile-mode 1)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(setq ivy-re-builders-alist '((read-file-name-internal . ivy--regex-fuzzy) (t . ivy--regex-plus)))



(defun my/counsel-ag-in-project ()
  "Quick project-wide text searching."
  (interactive)
  (let ((project-root (projectile-project-root)))
    ;; if projectile could not find project-root, it will already have
    ;; shown an error message. We only have to check for non-nil.
    (if project-root
        (counsel-ag nil project-root nil
                    (format "Search in project")))))

(provide 'setup-ivy)
