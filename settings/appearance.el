;; Themes

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; ;; ;;'(custom-enabled-themes (quote (molokai)))

;; ;; ;; make the fringe stand out from the background
;;  (setq solarized-distinct-fringe-background nil)

;; ;; ;; Don't change the font for some headings and titles
;;  (setq solarized-use-variable-pitch nil)

;; ;; ;; make the modeline high contrast
;; ;; (setq solarized-high-contrast-mode-line t)

;; ;; ;; Use less bolding
;; (setq solarized-use-less-bold t)

;; (setq solarized-use-more-italic nil)

;; ;; ;; Use less colors for indicators such as git:gutter, flycheck and similar
;; (setq solarized-emphasize-indicators nil)

;; ;; (setq x-use-underline-position-properties t)
;; ;; (setq underline-minimum-offset 10)

;; ;; ;; Avoid all font-size changes
;; (setq solarized-height-minus-1 1.0)
;; (setq solarized-height-plus-1 1.0)
;; (setq solarized-height-plus-2 1.0)
;; (setq solarized-height-plus-3 1.0)
;; (setq solarized-height-plus-4 1.0)

(setq sml/no-confirm-load-theme t)

(load-theme 'molokai t)
(sml/setup)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-warning  ((t (:background nil :foreground nil :distant-foreground "#666699"))))
 '(region ((t (:background "#4e4e4e" :foreground nil :distant-foreground "#666699")))))

(add-to-list 'default-frame-alist '(height . 90))
(add-to-list 'default-frame-alist '(width . 180))

;; initial window
(setq initial-frame-alist '((width . 180) (height . 90)))

;; (setq font-lock-maximum-decoration t
;;       color-theme-is-global t
;;       truncate-partial-width-windows nil)


(when (window-system)
  (set-default-font "Fira Code"))
(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

;; Highlight current line
(global-hl-line-mode 1)

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

(set-face-attribute 'default nil :height 200)

(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))


(face-attribute 'default :font)

;; Line number
(linum-relative-mode)

(setq linum-format "%3d ")

(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
		      (ceiling (* (if (boundp 'text-scale-mode-step)
				      (expt text-scale-mode-step
					    text-scale-mode-amount) 1)
				  (if (car (window-margins))
				      (car (window-margins)) 1)
				  ))))
(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)

(add-to-list 'default-frame-alist '(left-fringe . 8))
(add-to-list 'default-frame-alist '(right-fringe . 0))

(provide 'appearance)
