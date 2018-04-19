(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     yaml
     vimscript
     html
     shell-scripts ;; fish shell

     python
     ipython-notebook

     java

     c-c++

     latex

     csv
     markdown
     org

     pdf-tools
     emacs-lisp
     helm
     auto-completion
     git
     shell
     markdown
     chinese


     docker
     ;; better-defaults
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; dotspacemacs-additional-packages '()
   dotspacemacs-additional-packages '(fcitx)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   ;; dotspacemacs-check-for-update t
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil
   ))

(setq-default dotspacemacs-configuration-layers 
              '((c-c++ :variables
                       c-c++-enable-clang-support t
                       c-c++-default-mode-for-headers 'c++-mode
                       )))

(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-return-key-behavior 'complete
                                 auto-completion-tab-key-behavior 'cycle
                                 auto-completion-complete-with-key-sequence nil
                                 auto-completion-complete-with-key-sequence-delay 0.1
                                 auto-completion-enable-help-tooltip t)))

(setq-default dotspacemacs-configuration-layers
              '((shell :variables
                       shell-default-position 'bottom
                       shell-default-height 30
                       shell-default-term-shell "/bin/fish"

                       ;; Width of the shell popup buffers
                       shell-default-full-span nil
                       )))


(setq yas-snippet-dirs '("~/.emacs.d/private/snippets"))
(defun dotspacemacs/user-init ()
  (setq-default git-magit-status-fullscreen t)
  (setq-default git-enable-magit-svn-plugin t)
  (setq exec-path-from-shell-arguments '("-l"))
  )

;; org
(setq-default dotspacemacs-configuration-layers
              '((org :variables org-projectile-file "TODOs.org")))

;; (with-eval-after-load 'org-agenda
;;   (require 'org-projectile)
;;   (push (org-projectile:todo-files) org-agenda-files))

;; md
dotspacemacs-configuration-layers '(
                                    (markdown :variables markdown-live-preview-engine 'vmd))

;; latex
dotspacemacs-configuration-layers '(
                                    (latex :variables latex-build-command "LaTeX"
                                           latex-enable-auto-fill t
                                           latex-enable-folding t))

(defun dotspacemacs/user-config ()
  (desktop-save-mode)
  (desktop-read)
  (global-git-commit-mode t)
  (setq-default tab-width 4)
  (setq ns-use-srgb-colorspace nil)

  ;;latex
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;;fish shell
  ;; (add-hook 'term-mode-hook 'toggle-truncate-lines)

  (global-company-mode)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (dockerfile-mode docker json-mode docker-tramp json-snatcher json-reformat yaml-mode vimrc-mode dactyl-mode pyim pyim-basedict pangu-spacing find-by-pinyin-dired ace-pinyin pinyinlib fcitx web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data powerline spinner hydra parent-mode projectile pkg-info epl flx let-alist smartparens iedit anzu evil goto-chg undo-tree highlight bind-map bind-key packed f dash s helm avy helm-core async popup insert-shebang fish-mode company-shell org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit ghub with-editor company-quickhelp pos-tip yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic ac-cake pdf-tools tablist mmm-mode markdown-toc markdown-mode helm-company helm-c-yasnippet gh-md fuzzy disaster csv-mode company-statistics company-c-headers company cmake-mode clang-format auto-yasnippet yasnippet ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
