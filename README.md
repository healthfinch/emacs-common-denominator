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

Uses [ido](http://www.emacswiki.org/emacs/InteractivelyDoThings) and
[smex](http://www.emacswiki.org/emacs/Smex) and
[recentf](http://www.emacswiki.org/emacs/RecentFiles) so that
**buffer-switching, file-choice**, and other commands prompt with
likely choices. You don't need to do anything; this just augments
existing commands.

Use [**ag(1)**](http://geoff.greer.fm/ag/) to **search files** via `M-x ag` and `M-x ag-project`.

*  `M-x ag-project` searches everything under the Git root.
*  `M-x ag` searches from a directory of your choice (defaulting to the buffer's current directory).
*  Thereafter, "C-x `" (backtick) will pop your cursor to each location in turn.
*  Alternately, you can navigate to a line in the buffer and hit RET. 
   That also sets the location for "C-x `".

Install `ag` with `brew install ag`. 

[`company-mode`](http://company-mode.github.io/) is used to provide
automatic offers to **autocomplete**. The offer is in a list. You can move
through the list with `M-n` and `M-p` (*not* `C-n` and `C-p`) or the arrow keys. 
You can select - for example - the 5th entry with `M-5`.

`hippie-expand` provides **autocompleting** based on words it's seen in
this and other buffers. It seems to pick up words Company-mode
doesn't. Complete the word you're typing with [f8].


