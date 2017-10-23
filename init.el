;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

;; Set path to dependencies
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(require 'package)
;; Add melpa to package repos
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(flycheck-rubocop-lint-only nil)
 '(global-linum-mode t)
 '(package-selected-packages
   (quote
    (helm-projectile helm slim-mode format-sql dart-mode ## smart-mode-line zenburn-theme emmet-mode solarized-theme coffee-mode ag sass-mode auto-complete linum-relative evil-nerd-commenter elixir-mode highlight-indentation yaml-mode undo-tree flycheck smex yasnippet rubocop enh-ruby-mode web-mode fiplr smartparens multiple-cursors ace-jump-mode))))

;; Set up appearance early
(require 'appearance)

;; Pending delete
(pending-delete-mode t)

;; Move windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Setup Key-bindings
(require 'key-bindings)

;; Setup Enh ruby mode
(require 'setup-enh-ruby-mode)

;; Setup Flycheck
(require 'setup-flycheck)

;; Setup Web mode
(require 'setup-web-mode)

;; Setup Yasnippet
(require 'setup-yasnippet)

;; Setup Smartparens
(require 'setup-smartparens)

;; Setup evil-nerd-commenter
(require 'setup-evil-nerd-commenter)

;;Setup auto-complete-mode
(require 'setup-auto-complete-mode)

;; Setup smex
(require 'setup-smex)

;; Setup helm
(require 'setup-helm)

;; Setup helm-projectile
(require 'setup-helm-projectile)


;; Sane defaults
(require 'sane-defaults)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-warning ((t (:background nil :foreground nil :distant-foreground "#666699"))))
 '(region ((t (:background "#4e4e4e" :foreground nil :distant-foreground "#666699")))))

(autoload 'wl "wl" "Wanderlust" t)
