(use-package company
  :init (add-hook 'after-init-hook 'global-company-mode))



;;;; Hippie-expand

(setq hippie-expand-try-functions-list '(try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-expand-all-abbrevs
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))
(global-set-key [f8] 'hippie-expand)




(provide 'healthfinch-autocomplete)

