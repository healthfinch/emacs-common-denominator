# emacs-common-denominator
Purpose: make pairing with emacs smoother

Add to your normal emacs init file like this:

```elisp
(push "~/h/emacs-common-denominator" load-path)
(require 'healthfinch-init)
```

I put it at the end of the file so that it will override anything conflicting.

Brickbats to ocho.

Features:
* Uses ido and smex and recentf so that buffer-switching and other commands prompt
  with likely choices. You don't need to do anything; this just augments existing
  comments. 



