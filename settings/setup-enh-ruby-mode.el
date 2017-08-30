(add-to-list 'auto-mode-alist
	     '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
(add-hook 'ruby-mode-hook #'rubocop-mode)

(setq enh-ruby-deep-indent-paren nil)
(setq enh-ruby-use-ruby-mode-show-parens-config t)

(provide 'setup-enh-ruby-mode)
