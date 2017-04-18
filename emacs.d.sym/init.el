;;; init.el --- Marchi's personal Emacs config

;; Copyright (C) 2015-2016 Mark Volosiuk

;; Author: Mark Volosiuk <marchi.martius@gmail.com>
;; URL: https://github.com/marchi-martius/emacs.d
;; Version: 1.1.2
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:
;; This is marchi's personal Emacs config.


;;; Code:

(add-to-list 'load-path "~/.emacs.d/etc")

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(require 'ido)
(ido-mode t)

(require 'default-frame)
(require 'tags)

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package ag)

(use-package inf-ruby
  :config
  (inf-ruby-switch-setup))

(use-package auto-complete
  :init
  (require 'auto-complete-config)
  :config
  (ac-config-default))

(use-package ac-etags
  :config
  (ac-etags-setup))

(use-package magit
  :bind
  ("C-c g" . magit-status))

(use-package go-mode
  :init
  (add-hook 'go-mode-hook 'gofmt-before-save))

(use-package elixir-mode)

(use-package haskell-mode)

(use-package haml-mode)

(use-package web-mode
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(use-package rspec-mode)

(use-package coffee-mode
  :config
  (setq coffee-tab-width 2))

(use-package yaml-mode)

(use-package sass-mode)

(use-package scss-mode)

(add-to-list 'auto-mode-alist '("\\.arb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(add-hook 'before-save-hook 'whitespace-cleanup)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ac-etags jsx-mode zenburn-theme yaml-mode web-mode use-package scss-mode sass-mode rspec-mode projectile-rails magit-gh-pulls leuven-theme helm-projectile helm-fuzzy-find helm-ag haskell-mode go-mode flycheck fill-column-indicator exec-path-from-shell elixir-mode coffee-mode chruby auto-complete ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
