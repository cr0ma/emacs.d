;; load my theme

(load-theme 'custom-dark t)

(require 'package)

;; Add MELPA package archive
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Define a list of package names to install
(setq package-list '(lsp-mode lsp-ui company yasnippet nyan-mode dashboard evil which-key magit amx))

;; Initialize package.el
(package-initialize)

;; Refresh package contents
(unless package-archive-contents
  (package-refresh-contents))

;; Install the packages from the package list
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp-deferred)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'nyan-mode)
(nyan-mode 1)

(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-startup-banner "/home/cr0ma/.emacs.d/banner.txt")
(setq dashboard-center-content t)


;; evil configuration

(evil-mode 1)
;; Optional configurations
;; Disable evil in specific modes (e.g., in the minibuffer)
(setq evil-disable-insert-state-bindings t)

;; Use Emacs keybindings in the modes where Evil is disabled
(setq evil-disable-insert-state-bindings nil)

;; Enable some Vim keybindings in the buffer-list (switching between buffers)
(setq evil-want-C-u-scroll t)

;; If you use the "which-key" package, enable it with Evil integration:
(require 'which-key)
(which-key-mode)

(require 'magit)

;; Set the default directory for Magit status
(setq magit-repository-directories '("~/projects"))

(global-set-key (kbd "C-x g") 'magit-status)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu-bar-mode nil)
 '(package-selected-packages '(yasnippet company lsp-ui lsp-mode))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
