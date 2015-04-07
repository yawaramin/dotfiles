(custom-set-variables
  ;; custom-set-variables was added by Custom. If you edit it by hand,
  ;; you could mess it up, so be careful. Your init file should contain
  ;; only one such instance. If there is more than one, they won't work
  ;; right.
  '(column-number-mode t)
  '(indent-tabs-mode nil)
  '(org-agenda-files nil)
  '(show-paren-delay 0)
  '(show-paren-mode t)
  '(standard-indent 2)
  '(tab-always-indent t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.If you edit it by hand, you
  ;; could mess it up, so be careful.Your init file should contain only
  ;; one such instance.If there is more than one, they won't work right.
  '(default
    ((t
      (:inherit nil
      :stipple nil
      :background "White"
      :foreground "Black"
      :inverse-video nil
      :box nil
      :strike-through nil
      :overline nil
      :underline nil
      :slant normal
      :weight normal
      :height 140
      :width normal)))))

(delete-selection-mode t) ; replace highlighted text
(windmove-default-keybindings) ; move between windows with shift-arrow
(show-paren-mode t) ; show matching paren

;; use only spaces for alignment
(global-set-key (kbd "C-c a") 'align-with-spaces)
(defun align-with-spaces (beg end pattern)
  "Align selected using only spaces for whitespace."
  (interactive "r\nsAlign by: ")
  (let ((indent-tabs-mode nil))
    (align-string beg end pattern 1)
    (align-entire beg end)
    (untabify beg end)
    (indent-region beg end)
    (whitespace-cleanup-region beg end)))

(setq initial-frame-alist
  (list
    (top . 80)
    (left . 300)
    (width . 95)
    (height . 35)))

(add-hook 'text-mode-hook
  (list
    (lambda ()
      (auto-fill-mode 1)
      (setq-default fill-column 72)))

;; From [1]:
(setq-default show-trailing-whitespace t)
(global-set-key [f8] 'delete-trailing-whitespace)

;; From Org manual:
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-font-lock-mode 1)

;; Copying lines, not killing: from [3]:
(defun copy-line (&optional arg)
  "Do a kill-line but copy rather than kill. This function directly
  calls kill-line, so see documentation of kill-line for how to use it
  including prefix argument and relevant variables. This function works
  by temporarily making the buffer read-only, so I suggest setting
  kill-read-only-ok to t."
  (interactive "P")
  (toggle-read-only 1)
  (kill-line arg)
  (toggle-read-only 0))
(setq-default kill-read-only-ok t)
(global-set-key "\C-c\C-k" 'copy-line)

;; [1] http://lists.freedesktop.org/archives/libreoffice/2010-October/000677.html
;; [2] http://mobileorg.ncogni.to/doc/getting-started/using-dropbox/
;; [3] http://emacsblog.org/2009/05/18/copying-lines-not-killing/

