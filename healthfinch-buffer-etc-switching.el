;;; Finding and switching among buffers, windows, files, frames - gross-level movement

;;;; recentf
(recentf-mode t)
(setq-default recentf-max-menu-items 40)
(setq-default recentf-menu-filter 'recentf-sort-basenames-ascending)

;;; IDO
(require 'ido)
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
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c M-x") 'smex-update-and-run)
;; This is your old M-x.
(global-set-key (kbd "M-z") 'execute-extended-command)



(provide 'healthfinch-buffer-etc-switching)
