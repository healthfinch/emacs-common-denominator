;;; Finding and switching among buffers, windows, files, frames - gross-level movement

;;;; recentf - maintain a menu of recently-used files. The menu is displayed for commands like `find-file`.
(recentf-mode t)  
(setq-default recentf-max-menu-items 40)
(setq-default recentf-menu-filter 'recentf-sort-basenames-ascending) ; sort by filename, ignoring directory part.


;;; IDO: -I-nteractively -DO- things with buffers and files (such as easily get to the most recently used ones).
(use-package ido-ubiquitous
  :ensure t
  :init (require 'ido)
  :config (use-package ido-vertical-mode)
          (ido-mode t)                           ; globally change file buffer commands to ido versions
          (ido-everywhere t)                     ; seems same as above
          (ido-ubiquitous-mode t)                ; change completion commands to provide choices
          (ido-vertical-mode t)                  ; display choices vertically

          (setq ido-enable-flex-matching t)      ; "fob" will match "foobar" - gaps allowed
          ; (setq ido-auto-merge-work-directories-length nil)  ; what does this actually do?
          (setq ido-use-virtual-buffers t)       ; remember buffers that have been closed

          (setq ido-ubiquitous-command-exceptions '(execute-extended-command)) ; defer to smex

          (add-hook 'ido-setup-hook (lambda ()
                                      ;; step through list with C-n C-p,
                                      ;; DEL or C-h to delete a character or directory
                                      ;; M-DEL or C-w to delete word or directory
                                      ;; RETURN to select top choice.
                                      (define-key ido-completion-map (kbd "C-h") 'ido-delete-backward-updir)
                                      (define-key ido-completion-map (kbd "C-w") 'ido-delete-backward-word-updir)
                                      (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
                                      (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
                                      (define-key ido-completion-map [tab] 'ido-complete))))

;;;; smex: extend M-x

(use-package smex
  :ensure t
  :init (add-hook 'after-init-hook 'smex-initialize)
  :config
  :bind (("M-x" . smex)                        ; Ordinary M-x but with a menu prepopulated with likely commands.
         ("M-X" . smex-major-mode-commands)    ; As above, but commands are limited to buffer's major mode.
         ("M-z" . execute-extended-command)))  ; The original M-x

(provide 'healthfinch-buffer-etc-switching)


;;; ag - use the `ag` command to pop up an error-style buffer.
;;; M-x ag-project searches everything under the Git root.
;;; M-x ag searches from the buffer's current directory.
;;; Thereafter, "C-x `" will pop your cursor to each location in turn.
;;; Alternately, you can navigate to a line in the buffer and hit RET. 
;;; That also sets the location for "C-x `".
(use-package ag
  :commands (ag-project ag))
