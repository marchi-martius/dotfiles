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

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/etc")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(require 'web-mode-indent-hook)
(require 'default-frame)
(require 'tags)

(use-package exec-path-from-shell
  :if window-system
  :config
  (exec-path-from-shell-initialize))

(use-package helm
  :init
  (require 'helm-config)
  :config
  (helm-mode 1)
  :bind
  ("M-x" . helm-M-x))

(use-package helm-fuzzy-find)

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package chruby
  :init
  (add-hook 'projectile-after-switch-project-hook #'chruby-use-corresponding)
  :config
  (chruby-use "2.3.1"))

(use-package projectile
  :config
  (projectile-global-mode 1))

(use-package helm-projectile
  :init
  (setq projectile-completion-system 'helm)
  :config
  (helm-projectile-on))

(use-package projectile-rails
  :init
  (setq projectile-rails-vanilla-command "bin/rails")
  (setq projectile-rails-spring-command "bin/spring")
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(use-package ag)

(use-package helm-ag)

(use-package inf-ruby
  :config
  (inf-ruby-switch-setup))

(use-package fill-column-indicator
  :init
  (setq fci-rule-column 110))

(use-package auto-complete
  :init
  (require 'auto-complete-config)
  :config
  (ac-config-default))

(use-package magit
  :bind
  ("C-x g" . magit-status))

(use-package magit-gh-pulls
  :init
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))

(use-package go-mode
  :init
  (add-hook 'go-mode-hook 'gofmt-before-save))

(use-package elixir-mode)

(use-package haskell-mode)

(use-package haml-mode)

(use-package web-mode
  :init
  (add-hook 'web-mode-hook 'marcho-web-mode-indent))

(use-package rspec-mode)

(use-package coffee-mode
  :init
  (setq coffee-tab-width 2))

(use-package yaml-mode)

(use-package sass-mode)

(use-package scss-mode)

(use-package zenburn-theme
  :config
  (load-theme 'zenburn 1))

(add-to-list 'auto-mode-alist '("\\.arb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(add-hook 'before-save-hook 'whitespace-cleanup)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

;;; init.el ends here
