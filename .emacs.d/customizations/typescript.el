(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  ;;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'js2-mode-hook #'setup-tide-mode)

(setq javascript-indent-level 2)
