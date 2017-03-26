;;; Emacs init.el
;;; daniel(at)hagiz.se

;; Setup the package manager.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

;; Initialize the package manager.
(package-initialize)

;; Bootstrap 'use-package'.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load the settings from 'settings.org'
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
