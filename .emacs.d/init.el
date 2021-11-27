;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * Packages
;;----------------------------

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa stable" . "https://stable.melpa.org/packages/"))

(setq package-archive-priorities
      '(("melpa stable" . 0)
        ("gnu" . -10)
        ("melpa" . 5)))

(package-initialize)

;; ** First time setup
;; When starting from an empty config, install use-package.
(unless (locate-library "use-package")
  (package-refresh-contents)
  (package-install 'use-package))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * use-package
;;----------------------------

(require 'use-package)

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package diminish)
(use-package bind-key)
(use-package hydra)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * General stuff
;;----------------------------

(setq x-select-enable-clipboard nil)
;; (setq max-specpdl-size 13000)

(setq-default ;; inhibit-startup-message t ;; hide the startup message
              ;; mouse-wheel-scroll-amount '(1 ((shift) . 1)) ;; one line at a time
              mouse-wheel-progressive-speed nil ;; don't accelerate scrolling
              mouse-wheel-follow-mouse 't ;; scroll window under mouse
              ;; scroll-step 1 ;; keyboard scroll one line at a time
              scroll-conservatively 101 ;; keyboard scroll one line at a time
              scroll-margin 3
              split-height-threshold 2
              split-width-threshold 20
              fill-column 80
              recentf-max-saved-items 1000
              help-window-select t
              ;; display-line-numbers 'visual
              ;; display-line-numbers nil
              indent-tabs-mode nil
              tab-width 4
              dired-auto-revert-buffer t
              sentence-end-double-space nil)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(load "~/.emacs.d/utils.el")

(global-set-key (kbd "<S-down-mouse-1>") 'mouse-save-then-kill)
(global-set-key (kbd "<f12>") 'switch-to-minibuffer-window)
(global-set-key (kbd "<f2>") 'package-list-packages)
(global-set-key (kbd "<f3>") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

(load "~/.emacs.d/init_essentials.el")

(load "~/.emacs.d/init_frames.el")

(load "~/.emacs.d/init_extras.el")
(load "~/.emacs.d/other/init_extras_comments.el")
;(require 'julia-mode)
;(require 'julia-repl)
;; (use-package lua-mode)

;(load "~/.emacs.d/init_extras_julia.el")
(load "~/.emacs.d/init_extras_greek.el")

;; (load "~/.emacs.d/init_danny.el")

;(use-package eglot-jl
;  :config
;  (eglot-jl-init))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * Emacs customize
;;----------------------------
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))
(global-set-key (kbd "<f4>") 'save-buffers-kill-emacs)
(defconst julia-macro-regex-nogrouping (rx symbol-start (: "@" (1+ (or word (syntax symbol))))))
(defconst julia-prefixed-macro (rx-to-string `(: (* (: (1+ word) ".")) (regexp ,julia-macro-regex-nogrouping))))
(defconst julia-prefixed-macro-list (rx-to-string `(: (* space) (* (regexp ,julia-prefixed-macro) (* space)))))

(use-package julia-funcobs
  :load-path "~/.emacs.d/julia-funcobs"
  :bind (("<f5> o" .#'julia-function-observe)))

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Julia


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * THEME
;;----------------------------

(use-package unicode-fonts
  :custom
  (unicode-fonts-fallback-font-list '("Symbola" "Quivira" "DejaVu Math Tex Gyre"))
  :config
  (unicode-fonts-setup)
  )

(use-package moe-theme
  :config
  (load-theme 'moe-dark t nil)
  (custom-theme-set-faces 'moe-dark '(default ((t (:background "#000000" :foreground "#c6c6c6" :family "mononoki Nerd Font" :height 100)))))
  (custom-theme-set-faces 'moe-dark '(compilation-error ((t (:foreground "#333" :background "#faa" :weight bold))))))


;; Latex
(load "auctex.el" nil t t)
(require 'tex-mik)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook #'evil-tex-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (setq TeX-PDF-mode t)
