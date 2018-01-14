(require 'web-mode)
(require 'elixir-mode)
(require 'ruby-end)

(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode ))

(add-to-list 'elixir-mode-hook
             (defun auto-activate-ruby-end-mode-for-elixir-mode ()
               (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
                    "\\(?:^\\|\\s-+\\)\\(?:do\\)")
               (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
               (company-mode +1)
               (alchemist-mode +1)
               (ruby-end-mode +1)))
