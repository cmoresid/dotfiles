;;;;
;; Packages
;;;;

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t) 

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Package install list
(defvar packages
  '(
    paredit
    projectile
    ido-ubiquitous
    rainbow-delimiters
    smex
    tagedit
    magit
    tide
    company
    all-the-icons
    neotree
    editorconfig
    flycheck
    js2-mode
    js2-refactor
    xref-js2
    alchemist
    elixir-mode
    ruby-end
    web-mode
    markdown-mode))

;; OS X Emacs GUI fix
(if (eq system-type 'darwin)
    (add-to-list 'packages 'exec-path-from-shell))

;; Install packages
(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Place any downloaded elisp files in ~/.emacs.d/vendor to have ability
;; to load them easily
(add-to-list 'load-path "~/.emacs.d/vendor")

;;;;
;; Customization
;;;;

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "shell-integration.el")
(load "navigation.el")
(load "ui.el")
(load "misc.el")
(load "editing.el")
(load "elisp-editing.el")
(load "magit-bindings.el")
(load "typescript.el")
(load "javascript.el")
(load "elixir.el")

(require 'all-the-icons)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;(add-hook 'after-init-hook #'neotree-toggle)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (tagedit tide company smex rainbow-delimiters projectile paredit magit ido-ubiquitous exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
