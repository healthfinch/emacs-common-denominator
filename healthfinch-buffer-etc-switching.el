;;; Finding and switching among buffers, windows, files, frames - gross-level movement


;;; IDO
(require 'ido)

;;;; ido
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-auto-merge-work-directories-length nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(setq ido-max-prospects 10)
(setq ido-read-file-name-non-ido nil)
(setq ido-use-filename-at-point nil)
(setq ido-use-virtual-buffers t)


(defun mp-ido-hook ()
  (define-key ido-completion-map (kbd "C-h") 'ido-delete-backward-updir)
  (define-key ido-completion-map (kbd "C-w") 'ido-delete-backward-word-updir)
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
  (define-key ido-completion-map [tab] 'ido-complete))

(add-hook 'ido-setup-hook 'mp-ido-hook)


(after 'ido-ubiquitous-autoloads (ido-ubiquitous-mode t))
;(after 'ido-ubiquitous (ido-ubiquitous-disable-in evil-ex))

(setq ido-ubiquitous-command-exceptions '(execute-extended-command))
(setq ido-ubiquitous-function-exceptions '())

(after 'ido-vertical-mode-autoloads
  (ido-vertical-mode t))

;;;; smex

(add-hook 'after-init-hook 'smex-initialize)


(provide 'healthfinch-buffer-etc-switching)
