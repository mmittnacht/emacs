(setq make-backup-files nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq ring-bell-function 'ignore)

(setq scroll-margin 10)

;; Tree sitter
(setq treesit-extra-load-path '("~/.emacs.d/tree-sitter"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  (setq which-key-separator " → " ))

(use-package page-break-lines
  :ensure t
  :config
  (page-break-lines-mode))

(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-dired
  :ensure t
  :config
  (add-hook 'dired-mode-hook #'all-the-icons-dired-mode))

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package elixir-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package eglot
  :hook (prog-mode . eglot-ensure))

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package flycheck-eglot
  :ensure t
  :after (flycheck eglot)
  :config
  (global-flycheck-eglot-mode 1))

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(keymap-global-set "C-x 2" 'split-window-right)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons-dired magit elixir-ts-mode elixir-mode treesit-auto which-key solarized-theme projectile page-break-lines dashboard all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
