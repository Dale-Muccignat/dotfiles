(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-clang company-semantic company-gtags company-capf company-keywords company-dabbrev-code company-dabbrev) t)
 '(company-box-show-single-candidate t)
 '(company-dabbrev-time-limit 1.0 t)
 '(company-global-modes '(not shell-mode) t)
 '(company-idle-delay 0.2 t)
 '(company-lighter-base " " t)
 '(company-minimum-prefix-length 2 t)
 '(doc-view-resolution 300)
 '(evil-cross-line t t)
 '(evil-emacs-state-cursor '("blue" box) t)
 '(evil-exchange-key "zx")
 '(evil-insert-state-cursor '("green" bar) t)
 '(evil-mc-one-cursor-show-mode-line-text nil t)
 '(evil-normal-state-cursor '("green" box) t)
 '(evil-operator-state-cursor '("orange" hollow) t)
 '(evil-replace-state-cursor '("red" box) t)
 '(evil-search-highlight-string-min-len 4)
 '(evil-symbol-word-search 'symbol)
 '(evil-visual-state-cursor '("orange" box) t)
 '(evil-visual-x-select-timeout 999 t)
 '(helm-M-x-fuzzy-match t t)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-imenu-fuzzy-match t t)
 '(helm-move-to-line-cycle-in-source t)
 '(helm-scroll-amount 8)
 '(helm-semantic-fuzzy-match t t)
 '(helm-split-window-in-side-p t)
 '(helm-split-window-inside-p t)
 '(latex-preview-pane-use-frame t)
 '(package-selected-packages
   '(jupyter lua-mode key-chord eterm-256color julia-repl unicode-fonts ggtags company-auctex latex-preview-pane latex-pretty-symbols latex-math-preview ibuffer-sidebar treemacs-magit treemacs-projectile treemacs-evil treemacs-icons-dired treemacs projectile company-box company-quickhelp company helpful magit evil-mc evil-search-highlight-persist evil-avy evil-exchange evil-surround flycheck-pos-tip expand-region helm-swoop ace-window hl-todo helm-flycheck flycheck yasnippet-snippets yasnippet indent-guide mode-icons powerline-evil powerline moe-theme rainbow-delimiters highlight-symbol helm-ag wgrep-helm helm evil-collection evil which-key hydra diminish use-package))
 '(prettify-symbols-unprettify-at-point "right-edge")
 '(preview-gs-options
   '("-q" "-dNOSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4") t)
 '(projectile-mode-line-prefix " ")
 '(projectile-switch-project-action 'helm-projectile-find-file)
 '(undo-tree-enable-undo-in-region nil)
 '(unicode-fonts-fallback-font-list '("Symbola" "Quivira" "DejaVu Math Tex Gyre"))
 '(web-mode-enable-engine-detect t t)
 '(which-key-idle-delay 0.2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-box-scrollbar ((t (:background "bisque"))))
 '(lsp-ui-sideline-global ((t (:background "navy"))))
 '(markdown-code-face ((t (:inherit default))))
 '(org-agenda-dimmed-todo-face ((t (:foreground "grey20"))))
 '(outline-1 ((t (:height 2.0 :family "Liberation Mono" :foreground "black" :background "DarkSeaGreen1"))))
 '(outline-2 ((t (:height 1.5 :family "Liberation Mono"))))
 '(outline-3 ((t (:height 1.2 :family "Liberation Mono")))))
