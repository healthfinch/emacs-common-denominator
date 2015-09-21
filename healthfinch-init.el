(require 'cl)
(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)

(require 'healthfinch-defaults)
(require 'healthfinch-buffer-etc-switching)
(require 'healthfinch-autocomplete)
(require 'healthfinch-project)

(provide 'healthfinch-init)

