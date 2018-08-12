;; GENERAL PURPOSE PACKAGES AND SETTINGS

;;Org mode inline images
(setq org-startup-with-inline-images t)

(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)

;; Package: smartparens
(require 'smartparens-config)
(show-smartparens-global-mode +1)
(smartparens-global-mode 1)
;; when you press RET, the curly braces automatically
;; add another newline
(sp-with-modes '(c-mode c++-mode)
  (sp-local-pair "{" nil :post-handlers '(("||\n[i]" "RET")))
  (sp-local-pair "/*" "*/" :post-handlers '((" | " "SPC")
                                            ("* ||\n[i]" "RET"))))
;;Undo-tree
(require 'undo-tree)
(global-undo-tree-mode 1)
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'redo)

;;Volatile-highlights
(require 'volatile-highlights)
(volatile-highlights-mode t)

;;Duplicate selection
(require 'duplicate-thing)
(global-set-key (kbd "M-c") 'duplicate-thing)

;; Easy indenting
(require 'clean-aindent-mode)
(set 'clean-aindent-is-simple-indent t)
(define-key global-map (kbd "RET") 'newline-and-indent)

;;Ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;;Recent-ext
(require 'recentf-ext)

;;Lists a tree of the selected folder
(require 'ztree-diff)
(require 'ztree-dir)
(global-set-key (kbd "<f8>") 'ztree-dir)

;; Neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; automatically use vlf on large file,
;; when the file exceed large-file-warning-threshold
(require 'vlf-setup)
(setq vlf-application 'dont-ask)

;;highlight uncommited changes
(global-diff-hl-mode)
(add-hook 'dired-mode-hook 'diff-hl-dired-mode)

;; highlight numbers
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

;;highlight symbols
(highlight-symbol-nav-mode)
(global-set-key [(control f1)] 'highlight-symbol)
(global-set-key [f1] 'highlight-symbol-next)
(global-set-key [(shift f1)] 'highlight-symbol-prev)
(global-set-key [(meta f1)] 'highlight-symbol-query-replace)

(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(add-hook 'org-mode-hook (lambda () (highlight-symbol-mode)))

(setq highlight-symbol-idle-delay 1.0
      highlight-symbol-on-navigation-p t)


;;rainbow mode
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(my-global-rainbow-mode 1)

;;Rainbow-delimiters
;;(add-hook 'after-init-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Package: clean-aindent-mode
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)
(setq dtrt-indent-verbosity 0)

;; (set-face-background 'indent-guide-face "#EF545F")
(setq indent-guide-char "|")
(setq indent-guide-recursive t)

;;drag-stuff
(require 'drag-stuff)
(drag-stuff-mode t)
(drag-stuff-global-mode t)
(setq drag-stuff-modifier '(meta shift))

;;expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;;System monitor
;; (require 'symon)
;; (symon-mode)

;; Mode-icons
;; Note: They can get in the way
;; (require 'mode-icons)
;; (mode-icons-mode)

;; drag-stuff
;; https://github.com/kaushalmodi/.emacs.d/blob/master/setup-files/setup-drag-stuff.el
;; https://github.com/rejeep/drag-stuff.el/issues/4
(defvar modi/drag-stuff--point-adjusted nil)
(defvar modi/drag-stuff--point-mark-exchanged nil)

(defun modi/drag-stuff--adj-pt-pre-drag ()
  "If a region is selected AND the `point' is in the first column, move
back the point by one char so that it ends up on the previous line. If the
point is above the mark, exchange the point and mark temporarily."
  (when (region-active-p)
    (when (< (point) (mark)) ; selection is done starting from bottom to up
      (exchange-point-and-mark)
      (setq modi/drag-stuff--point-mark-exchanged t))
    (if (zerop (current-column))
        (progn
          (backward-char 1)
          (setq modi/drag-stuff--point-adjusted t))
      ;; If point did not end up being on the first column after the
      ;; point/mark exchange, revert that exchange.
      (when modi/drag-stuff--point-mark-exchanged
        (exchange-point-and-mark) ; restore the original point and mark loc
        (setq modi/drag-stuff--point-mark-exchanged nil)))))

(defun modi/drag-stuff--rst-pt-post-drag ()
  "Restore the `point' to where it was by forwarding it by one char after
the vertical drag is done."
  (when modi/drag-stuff--point-adjusted
    (forward-char 1)
    (setq modi/drag-stuff--point-adjusted nil))
  (when modi/drag-stuff--point-mark-exchanged
    (exchange-point-and-mark) ; restore the original point and mark loc
    (setq modi/drag-stuff--point-mark-exchanged nil)))

(add-hook 'drag-stuff-before-drag-hook #'modi/drag-stuff--adj-pt-pre-drag)
(add-hook 'drag-stuff-after-drag-hook  #'modi/drag-stuff--rst-pt-post-drag)
(global-set-key (kbd "M-<up>")   #'drag-stuff-up)
(global-set-key (kbd "M-<down>") #'drag-stuff-down)


;;nlinum
;; Preset `nlinum-format' for minimum width.
(defun my-nlinum-mode-hook ()
  (when nlinum-mode
    (setq-local nlinum-format
                (concat "%" (number-to-string
                             ;; Guesstimate number of buffer lines.
                             (ceiling (log (max 1 (/ (buffer-size) 80)) 10)))
                        "d"))))
(add-hook 'nlinum-mode-hook #'my-nlinum-mode-hook)
(global-nlinum-mode 1)

;;browse kil ring
(require 'browse-kill-ring)
;;(global-set-key (kbd "C-c k") 'browse-kill-ring)
(browse-kill-ring-default-keybindings) ;; M - Y

;;powerline
(require 'powerline)
(powerline-vim-theme)
;;(powerline-nano-theme)

;; orgmode extension
(require 'org-journal)

;; dumb-jump
(require 'dumb-jump)
(dumb-jump-mode)
(global-set-key (kbd "M-1")   #'dumb-jump-go)
(global-set-key (kbd "M-2")   #'dumb-jump-back)
(global-set-key (kbd "M-3")   #'dumb-jump-quick-look)
(global-set-key (kbd "M-4")   #'dumb-jump-go-prompt)

;; JAMAL MODE
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; IDO
(require 'ido)
(ido-mode t)

;;goto last change
(require 'goto-chg)
(global-set-key (kbd "C-c a")   #'goto-last-change)

; Activate transparent GnuPG encryption.
(require 'epa-file)
(epa-file-enable)
(setq epg-gpg-program "gpg2")


;;Auctex configs
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
;;(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)


(provide 'general-conf)
