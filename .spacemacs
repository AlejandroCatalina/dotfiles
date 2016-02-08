;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     lispy
     git
     markdown
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     latex
     ipython-notebook
     python
     java
     ruby
     clojure
     haskell
     fsharp
     csharp
     github
     eyebrowse
     erc
     (mu4e :variables
           mu4e-installation-path "/usr/local/share/emacs/site-lisp/mu4e"
           mu4e-alert-notifications-spaceline t
           mu4e-account-alist '(("personal"
                                 ;; Under each account, set the account-specific variables you want.
                                 (mu4e-sent-messages-behavior delete)
                                 (mu4e-sent-folder "/personal/[Gmail].Sent Mail")
                                 (mu4e-drafts-folder "/personal/[Gmail].Drafts")
                                 (mu4e-trash-folder "/personal/[Gmail].Trash")
                                 (user-mail-address "alecatfel@gmail.com")
                                 (user-full-name "Alejandro Catalina Feliú")
                                 (smtpmail-default-smtp-server "smtp.gmail.com")
                                 (smtpmail-local-domain "gmail.com")
                                 (smtpmail-smtp-user "alecatfel@gmail.com")
                                 (smtpmail-smtp-server "smtp.gmail.com")
                                 (smtpmail-stream-type starttls)
                                 (smtpmail-smtp-service 587))
                                ("college"
                                 (mu4e-sent-messages-behavior sent)
                                 (mu4e-sent-folder "/college/.Sent Mail")
                                 (mu4e-drafts-folder "/college/.Drafts")
                                 (mu4e-trash-folder "/college/.Trash")
                                 (user-mail-address "alejandro.catalina@estudiante.uam.es")
                                 (user-full-name "Alejandro Catalina Feliú")
                                 (smtpmail-default-smtp-server "smtpinterno.uam.es")
                                 (smtpmail-local-domain "uam.es")
                                 (smtpmail-smtp-user "alejandro.catalina@estudiante.uam.es")
                                 (smtpmail-smtp-server "smtpinterno.uam.es")
                                 (smtpmail-stream-type ssl)
                                 (smtpmail-smtp-service 465))))
     spacemacs-ivy ;; Let's give this a shot
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(paredit multiple-cursors ag helm-ag ess pdf-tools
                                              clojure-mode-extra-font-locking cl-generic
                                              ob-ipython eclipse-theme)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; (default '(todos recents projects bookmarks agenda))
   dotspacemacs-startup-lists '(todos bookmarks agenda projects recents)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(eclipse
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'.")

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (global-linum-mode 1)
  (autoload 'enable-paredit-mode "paredit"
    "Turn on pseudo-structural editing of Lisp code."
    t)

  (require 're-builder)
  (setq reb-re-syntax 'string)

  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

  (global-set-key (kbd "M-y")                          'counsel-yank-pop)

  ;; Python environment setup
  (setq
   gud-pdb-command-name "ipdb"
   python-shell-interpreter "ipython"
   python-shell-interpreter-args "-i --autoindent"
   python-shell-prompt-regexp "In \\[[0-9]+\\]: "
   python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
   python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
   python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
   python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
  (add-hook 'python-mode-hook
            #'(lambda ()
                (define-key python-mode-map (kbd "C-m") 'newline-and-indent)))

  (when (fboundp 'jedi:setup)
    (add-hook 'python-mode-hook 'jedi:setup))

  ;; Parametres latex divers
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (setq TeX-PDF-mode t)

  (add-hook 'cider-mode-hook #'eldoc-mode)
  (setq cider-repl-result-prefix ";; => ")
  (setq cider-eval-result-prefix ";; => ")

  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

  ;; (load "~/.emacs.d.bak/setup-clojure.el")

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (setq-default TeX-master nil)
  (eval-after-load 'org
    (lambda()
      (require 'ess-site)
      (require 'ob-emacs-lisp)
      (require 'ob-ruby)
      (require 'ob-clojure)
      (require 'ob-latex)
      (require 'octave)
      (require 'ob-python)
      (require 'ob-ipython)
      (require 'ob-sql)
      (require 'ob-shell)
      (require 'ob-sqlite)
      (require 'ob-julia)
      (require 'ob-perl)
      (require 'ob-org)
      (require 'ob-awk)
      (require 'ob-sed)
      (require 'ob-css)
      (require 'ob-js)
      (require 'ob-stata)
      (setq org-export-babel-evaluate nil)
      (setq org-startup-indented t)
      ;; increase imenu depth to include third level headings
      (setq org-imenu-depth 3)
      ;; Set sensible mode for editing dot files
      (add-to-list 'org-src-lang-modes '("dot" . graphviz-dot))
      ;; Update images from babel code blocks automatically
      (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
      (setq org-src-fontify-natively t)
      (setq org-src-tab-acts-natively t)
      (setq org-confirm-babel-evaluate nil)))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((ditaa . t)
     (ipython . t)))

  (setq org-agenda-start-on-weekday 7)

  (spaceline-toggle-org-clock-on)

  (setq org-capture-templates
        '(("d" "Todo" entry (file+headline (concat org-directory "/todo.org") "Tasks")
           "* TODO [#A]%?\nSCHEDULED: %T\nDEADLINE: %T\nCreated: %t\nMessage: %a\n")
          ("e" "Emacs idea" entry (file+headline (concat org-directory "/todo.org") "Personal/Emacs")
           "* TODO %^{Task}\nSCHEDULED: %T\nCREATED: %T" :immediate-finish t)
          ("m" "Mail Todo" entry (file+headline (concat org-directory "/notes.org") "Mail")
           "* TODO [#B] Read Mail%? (%:fromname about %:subject)\n%U\nMessage: %A\n")
          ("M" "Mail Followup" entry (file+headline (concat org-directory "/notes.org") "Mail")
           "* TODO [#A] Followup Mail From %:fromname About %:subject)\nSCHEDULED: %T\nDEADLINE: %T\nCREATED: %t\nMessage: %a\nExtra Notes: %?")))

  ;; Setting org-mode key-bindings
  (spacemacs/set-leader-keys
    "oa" 'org-agenda
    "oc" 'org-capture
    "oC" 'helm-org-capture-templates    ;requires templates to be defined.
    "ol" 'org-store-link)

  ;; New TODO Workflow
  (setq org-todo-keywords
        '((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(w)" "|" "DONE(d)" "CANCELED(c)")
          (sequence "BUGREPORT(b)" "|" "FIXED(f)")))

  (setq org-todo-keyword-faces
        '(("TODO"      .  ((:foreground "red")))
          ("INPROGRESS" . ((:foreground "yellow")))
          ("WAITING" . ((:foreground "blue")))
          ("BUGREPORT" . ((:foreground "VioletRed4" :weight bold)))
          ("FIXED" . ((:foreground "SpringGreen4" :weight bold)))
          ("CANCELED"  . ((:foreground "blue" :weight bold)))))

  (setq org-latex-listings t)

  ;; Custom commands to handle the agenda
  (setq org-agenda-custom-commands
        '(("n" "Global Agenda view with TODO and INPROGRESS entries"
           ((agenda "")
            (todo "TODO")
            (todo "INPROGRESS")
            (todo "WAITING")))))

  (define-skeleton org-skeleton
    "Header info for a emacs-org file."
    "Title: "
    "#+TITLE:" str " \n"
    "#+AUTHOR: Alejandro Catalina\n"
    "#+email: alecatfel@gmail.com\n"
    "#+INFOJS_OPT: \n"
    "#+BABEL: :session :cache yes :results output graphics :exports both :tangle yes \n"
    "-----")

  (spacemacs/set-leader-keys-for-major-mode 'org-mode
    "Ss" 'org-skeleton)

  (setq-default evil-escape-key-sequence "gp")

  ;; Custom rcirc-complete-nick
  (with-eval-after-load 'rcirc
    (defun rcirc-complete ()
     "Cycle through completions from list of nicks in channel or IRC commands.
IRC command completion is performed only if '/' is the first input char."
     (interactive)
     (unless (rcirc-looking-at-input)
       (error "Point not located after rcirc prompt"))
     (if (eq last-command this-command)
         (setq rcirc-completions
               (append (cdr rcirc-completions) (list (car rcirc-completions))))
       (let ((completion-ignore-case t)
             (table (rcirc-completion-at-point)))
         (setq rcirc-completion-start (car table))
         (setq rcirc-completions
               (and rcirc-completion-start
                    (all-completions (buffer-substring rcirc-completion-start
                                                       (cadr table))
                                     (nth 2 table))))))
     (let ((completion (car rcirc-completions)))
       (when completion
         (delete-region rcirc-completion-start (point))
         (insert
          (concat
           (if (string= (buffer-name rcirc-server-buffer) "*irc.gitter.im*")
               "@"
             "")
           (cond
            ((= (aref completion 0) ?/) (concat completion " "))
            ((= rcirc-completion-start rcirc-prompt-end-marker)
             (format rcirc-nick-completion-format completion))
            (t completion))))))))

  (setq rcirc-server-alist
        '(("irc.freenode.net"
           :user "alex``"
           :nick "alex``"
           :password ""
           :channels ("#emacs" "#clojure" "#lisp"))
          ("irc.gitter.im"
           :port 6697
           :nick "AlejandroCatalina"
           :password "c3359bed7a81b8871deb92679c73cb715ee784dc"
           :channels ("#syl20bnr/spacemacs")
           :encryption tls)))

  ;; @see http://lists.gnu.org/archive/html/aspell-announce/2011-09/msg00000.html
  (defun flyspell-detect-ispell-args (&optional RUN-TOGETHER)
    "if RUN-TOGETHER is true, spell check the CamelCase words"
    (let (args)
      (cond
       ((string-match  "aspell$" ispell-program-name)
        ;; force the English dictionary, support Camel Case spelling check (tested with aspell 0.6)
        (setq args (list "--sug-mode=ultra" "--lang=en_US"))
        (if RUN-TOGETHER
            (setq args (append args '("--run-together" "--run-together-limit=5" "--run-together-min=2")))))
       ((string-match "hunspell$" ispell-program-name)
        (setq args nil)))
      args
      ))

  (cond
   ((executable-find "aspell")
    (setq ispell-program-name "aspell"))
   ((executable-find "hunspell")
    (setq ispell-program-name "hunspell")
    ;; just reset dictionary to the safe one "en_US" for hunspell.
    ;; if we need use different dictionary, we specify it in command line arguments
    (setq ispell-local-dictionary "en_US")
    (setq ispell-local-dictionary-alist
          '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8))))
   (t (setq ispell-program-name nil)))

  (setq ispell-extra-args (flyspell-detect-ispell-args t))

  (defadvice ispell-word (around my-ispell-word activate)
    (let ((old-ispell-extra-args ispell-extra-args))
      (ispell-kill-ispell t)
      (setq ispell-extra-args (flyspell-detect-ispell-args))
      ad-do-it
      (setq ispell-extra-args old-ispell-extra-args)
      (ispell-kill-ispell t)
      ))

  (defadvice flyspell-auto-correct-word (around my-flyspell-auto-correct-word activate)
    (let ((old-ispell-extra-args ispell-extra-args))
      (ispell-kill-ispell t)
      ;; use emacs original arguments
      (setq ispell-extra-args (flyspell-detect-ispell-args))
      ad-do-it
      ;; restore our own ispell arguments
      (setq ispell-extra-args old-ispell-extra-args)
      (ispell-kill-ispell t)))

  ;; Setting some global variables i'll need
  (setq elisp-dev-directory "~/dev/emacs/elisp")
  (setq python-dev-directory "~/dev/catedra/notebooks")
  (add-to-load-path elisp-dev-directory)

  ;; Loading my custom utilities
  (load-file (concat elisp-dev-directory "/spaceline-utils.el"))
  (load-file (concat elisp-dev-directory "/evil-mc-setup.el"))
  (load-file (concat elisp-dev-directory "/init-pdf-tools.el"))

  ;; Setting up mu4e
  (setq mu4e-maildir "~/.mail")

  ;; Setting multiple accounts
  (setq mu4e-account-alist
        '(("personal"
           ;; Under each account, set the account-specific variables you want.
           (mu4e-sent-messages-behavior delete)
           (mu4e-sent-folder "/personal/[Gmail].Sent Mail")
           (mu4e-drafts-folder "/personal/[Gmail].Drafts")
           (mu4e-trash-folder "/personal/[Gmail].Trash")
           (user-mail-address "alecatfel@gmail.com")
           (user-full-name "Alejandro Catalina Feliú")
           (smtpmail-default-smtp-server "smtp.gmail.com")
           (smtpmail-local-domain "gmail.com")
           (smtpmail-smtp-user "alecatfel@gmail.com")
           (smtpmail-smtp-server "smtp.gmail.com")
           (smtpmail-stream-type starttls)
           (smtpmail-smtp-service 587))
          ("college"
           (mu4e-sent-messages-behavior sent)
           (mu4e-sent-folder "/college/.Sent Mail")
           (mu4e-drafts-folder "/college/.Drafts")
           (mu4e-trash-folder "/college/.Trash")
           (user-mail-address "alejandro.catalina@estudiante.uam.es")
           (user-full-name "Alejandro Catalina Feliú")
           (smtpmail-default-smtp-server "smtpinterno.uam.es")
           (smtpmail-local-domain "uam.es")
           (smtpmail-smtp-user "alejandro.catalina@estudiante.uam.es")
           (smtpmail-smtp-server "smtpinterno.uam.es")
           (smtpmail-stream-type ssl)
           (smtpmail-smtp-service 465))))
  (mu4e/mail-account-reset)

  ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
  ;; (setq mu4e-sent-messages-behavior 'delete)

  ;; (See the documentation for `mu4e-sent-messages-behavior' if you have
  ;; additional non-Gmail addresses and want assign them different
  ;; behavior.)

  ;; setup some handy shortcuts
  ;; you can quickly switch to your Inbox -- press ``ji''
  ;; then, when you want archive some messages, move them to
  ;; the 'All Mail' folder by pressing ``ma''.

  (setq mu4e-maildir-shortcuts
        '( ("/personal/INBOX"   . ?i)
           ("/college/INBOX"    . ?c)))

  ;; allow for updating mail using 'U' in the main view:
  (setq mu4e-get-mail-command "offlineimap")

  ;; something about ourselves
  (setq mu4e-compose-signature
        (concat
         "Un saludo,\n"
         "Alejandro Catalina Feliu\n"))

  (setq mu4e-update-interval 120
        mu4e-headers-auto-update t) ;; Retrieve mail every 120 seconds

  ;; don't keep message buffers around
  (setq message-kill-buffer-on-exit t)

  ;;; Bookmarks
  (setq mu4e-bookmarks
        `(("flag:unread AND NOT flag:trashed" "Unread messages" ?u)
          ("date:today..now" "Today's messages" ?t)
          ("date:7d..now" "Last 7 days" ?w)
          ("mime:image/*" "Messages with images" ?p)
          ("maildir:/personal/spacemacs" "Spacemacs Mail List" ?s)
          (,(mapconcat 'identity
                       (mapcar
                        (lambda (maildir)
                          (concat "maildir:" (car maildir)))
                        mu4e-maildir-shortcuts) " OR ")
           "All inboxes" ?i)))

  ;; tell message-mode how to send mail
  (setq message-send-mail-function 'smtpmail-send-it)

  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-insert-state-map (kbd "C-a") 'back-to-indentation)

  ;; Helm prompt in echo bottom area
  (setq helm-echo-input-in-header-line nil)

  (setq ivy-re-builders-alist
        '((t . ivy--regex-fuzzy)))

  (spacemacs/set-leader-keys "oil" 'org-insert-link)

  ;; Little powerline/spaceline tweak
  (setq powerline-default-separator 'arrow)

  ;; Lispy-mode settings and configurations
  (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))

  (defun conditionally-enable-lispy ()
    (when (eq this-command 'eval-expression)
      (lispy-mode 1)
      (local-set-key "β" 'helm-lisp-completion-at-point)))
  (add-hook 'minibuffer-setup-hook 'conditionally-enable-lispy)

  (defun unfill-paragraph ()
    "Replace newline chars in current paragraph by single spaces.
This command does the reverse of `fill-paragraph'."
    (interactive)
    (let ((fill-column 90002000))
      (fill-paragraph nil)))

  (defun unfill-region (start end)
    "Replace newline chars in region by single spaces.
This command does the reverse of `fill-region'."
    (interactive "r")
    (let ((fill-column 90002000))
      (fill-region start end)))

  ;; CUSTOM LAYOUTS
  ;; Define a custom layout to gather the mail
  (spacemacs|define-custom-layout "@mu4e"
    :binding "m"
    :body
    (mu4e))

  (spacemacs|define-custom-layout "@ERC"
    :binding "E"
    :body
    (add-hook 'erc-mode #'(lambda ()
                            (persp-add-buffer (current-buffer))))
    (erc :server "irc.freenode.net" :port 6667 :nick "alex```")
    (erc-tls :server "irc.gitter.im"
             :port 6697
             :nick "AlejandroCatalina"
             :password "c3359bed7a81b8871deb92679c73cb715ee784dc"))

  (spacemacs|define-custom-layout "@python"
    :binding "p"
    :body
    (progn
      (ein:notebooklist-open 8888)
      (split-window-right-and-focus)
      (python-start-or-switch-repl)
      (other-window -1)))

  (spacemacs|define-custom-layout "@clojure"
    :binding "c"
    :body
    (progn
      (find-file "~/dev/clojure/")
      (split-window-right-and-focus)
      (cider-jack-in)
      (other-window 1)))

  (spacemacs|define-custom-layout "@Org"
    :binding "o"
    :body
    (progn
      (mapc 'find-file org-agenda-files)
      (switch-to-buffer "todo.org")
      (split-window-right-and-focus)
      (org-agenda)))

  (spacemacs|define-custom-layout "@elisp"
    :binding "l"
    :body
    (progn
      (switch-to-buffer "*scratch")
      (split-window-right)
      (find-file elisp-dev-directory)))

  (spacemacs|define-custom-layout "@TFG"
    :binding "t"
    :body
    (find-file "~/dev/tfg/TFG esUS/PLANTILLA_TFG.tex"))

  (pdf-tools-install)
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/dev/org/seviri.org" "~/dev/org/notes.org" "~/dev/org/todo.org" "~/dev/catedra/notebooks/cathedra_notes.org" "~/dev/org/schedule.org")))
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
