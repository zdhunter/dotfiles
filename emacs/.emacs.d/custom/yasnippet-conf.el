;; YASNIPPET RELATED CONFIGURATION
;; Remember to manually download the plugins from
;; the git and then run M-x yas-reload-all to activate them

(add-to-list 'load-path
             "~/.emacs.d/snippets")
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-global-mode 1)


(provide 'yasnippet-conf)
