;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;(define-key evil-visual-state-map [escape] 'keyboard-quit)
;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(evil-define-key 'emacs global-map "," 'evil-execute-in-god-state)
(evil-define-key 'god global-map [escape] 'evil-god-state-bail)
(evil-define-key 'motion global-map "," 'evil-execute-in-god-state)
(evil-define-key 'normal global-map "," 'evil-execute-in-god-state)
(evilem-default-keybindings "SPC")
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
;(global-set-key (kbd ",") 'god-local-mode)
(global-set-key (kbd "C-,") 'god-local-mode)
(evil-leader/set-key
  "b" 'my-theme-toggle
  "s" '(lambda () (interactive)
	 (set-frame-parameter
	  (selected-frame) 'alpha (if (eql (frame-parameter (selected-frame) 'alpha) 75)
				      100
				    75))))
;(global-set-key (kbd "C-c C-t") 'my-theme-toggle)
;(global-set-key (kbd "C-c C-a") (lambda () (interactive)
;  (set-frame-parameter (selected-frame) 'alpha
;    (if (eql (frame-parameter (selected-frame) 'alpha) 75) 100 75))))
(global-set-key (kbd "C-x C-0") 'delete-window)
(global-set-key (kbd "C-x C-1") 'delete-other-windows)
(global-set-key (kbd "C-x C-2") 'split-window-below)
(global-set-key (kbd "C-x C-3") 'split-window-right)
(global-set-key (kbd "C-x g") 'magit-status)
