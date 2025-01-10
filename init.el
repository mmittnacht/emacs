(setq make-backup-files nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'exec-path "/opt/homebrew/bin")
(add-to-list 'exec-path "~/.asdf/shims")


(setq mac-command-modifier 'meta)

(setq ring-bell-function 'ignore)

(set-frame-font "Monaspace Neon 13" nil t)

(setq scroll-margin 10)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)))

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

(use-package telephone-line
  :ensure t
  :config
  (telephone-line-mode 1))

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :bind
  ("C-x f" . projectile-ripgrep)
  ("C-x d" . projectile-dired)
  ("C-x t" . projectile-find-file))

(use-package rg
  :ensure t
  :config
  (rg-enable-default-bindings))

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
  :hook (prog-mode . eglot-ensure)
  :bind
  ("C-x q" . eglot-format)
  ("C-x r" . eglot-rename))

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
  (global-company-mode 1))

(use-package helm
  :ensure t
  :config
  (setq helm-move-to-line-cycle-in-source nil)
  (setq helm-autoresize-mode 1)
  (setq helm-autoresize-max-height 30)
  (setq helm-autoresize-min-height 30)
  :bind
  ("M-x" . helm-M-x)
  ("C-x b" . helm-buffers-list)
  ("C-x C-f" . helm-find-files))

(use-package helm-projectile
  :ensure t
  :bind
  ("C-x f" . helm-projectile-rg)
  ("C-x d" . helm-projectile-find-dir)
  ("C-x t" . helm-projectile-find-file))

(use-package helm-flycheck
  :ensure t
  :config
  (eval-after-load 'flycheck
  '(define-key flycheck-mode-map (kbd "C-c j") 'helm-flycheck)))
  

(keymap-global-set "C-x 2" 'split-window-right)
(keymap-global-set "C-x -" 'eval-buffer)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(telephone-line helm-rg helm-projectile helm-flycheck rg all-the-icons-dired magit elixir-ts-mode elixir-mode treesit-auto which-key solarized-theme projectile page-break-lines dashboard all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
