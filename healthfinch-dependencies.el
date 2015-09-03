(defvar healthfinch-packages 
  '(ido-ubiquitous
    ido-vertical-mode
    smex
    ))

(require 'cl)
(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defun healthfinch-packages-installed-p ()
  (loop for p in healthfinch-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(defun install-healthfinch-packages ()
  "Install or update healthfinch packages"
  (interactive)
  (unless (healthfinch-packages-installed-p)
    (package-refresh-contents)
    (dolist (p healthfinch-packages)
      (unless (package-installed-p p)
        (package-install p)))))

(install-healthfinch-packages)

(provide 'healthfinch-dependencies)
