(setq make-backup-files nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq ring-bell-function 'ignore)

(set-frame-font "Cascadia Mono 10" nil t)

(setq scroll_margin 10)
(setq treesit-extra-load-path '("~/.emacs.d/tree-sitter")) 

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light t))

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

(use-package treesit-auto
  :config
  (global-treesit-auto-mode))

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

(use-package elixir-ts-mode
  :ensure t)

(use-package magit
  :ensure t)

(keymap-global-set "C-x 2" 'split-window-right)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit elixir-ts-mode elixir-mode treesit-auto which-key solarized-theme projectile page-break-lines dashboard all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
