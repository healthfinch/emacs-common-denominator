(setq-default require-final-newline t) ; add final newline on save
(setq-default indent-tabs-mode nil) ; please do not add tabs in indentation

(setq default-mode-line-format
      '("" "%[%f %*+%* %l (" mode-name minor-mode-alist ")%]" mode-line-process " " mode-line-buffer-identification "%-"))

(cond ((eq system-type 'darwin)
       (setq delete-by-moving-to-trash t)
       (setq trash-directory "~/.Trash/")))



(provide 'healthfinch-defaults)
