(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

(defun comment-or-uncomment-line ()
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
  (next-line))

(global-set-key (kbd "M-t") 'projectile-find-file)
(global-set-key (kbd "M-s-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-s-<left>") 'switch-to-prev-buffer)
(global-set-key (kbd "M-D") 'duplicate-line)
(global-set-key (kbd "M-/") 'comment-or-uncomment-line)

(eval-after-load 'rspec-mode
  '(progn
    (define-key rspec-mode-map (kbd "M-R") 'rspec-verify-single)
    (define-key rspec-mode-map (kbd "M-T") 'rspec-verify)
    (define-key ruby-mode-map (kbd "M-E") 'rspec-rerun)
    (define-key ruby-mode-map (kbd "M-s-<down>") 'rspec-toggle-spec-and-target)
    (rspec-install-snippets)))
