# emacs-common-denominator
Purpose: make pairing with emacs smoother

Add to your normal emacs init file like this:

```elisp
(push "~/h/emacs-common-denominator" load-path)
(require 'healthfinch-init)
```

I put it at the end of the file so that it will override anything conflicting.

Brickbats to ocho.

## Features

Uses ido and smex and recentf so that **buffer-switching, file-choice**, and other commands prompt
with likely choices. You don't need to do anything; this just augments existing
commands.

Use **ag(1)** to search via `M-x ag` and `M-x ag-project`.

*  M-x ag-project searches everything under the Git root.
*  M-x ag searches from the buffer's current directory.
*  Thereafter, "C-x `" will pop your cursor to each location in turn.
*  Alternately, you can navigate to a line in the buffer and hit RET. 
   That also sets the location for "C-x `".
