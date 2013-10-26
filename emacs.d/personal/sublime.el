(global-set-key (kbd "M-t") 'projectile-find-file)
(global-set-key (kbd "M-s-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-s-<left>") 'switch-to-prev-buffer)

(eval-after-load 'rspec-mode
  '(progn
    (define-key rspec-mode-map (kbd "M-R") 'rspec-verify-single)
    (define-key rspec-mode-map (kbd "M-T") 'rspec-verify)
    (define-key ruby-mode-map (kbd "M-E") 'rspec-rerun)
    (define-key ruby-mode-map (kbd "M-s-<down>") 'rspec-toggle-spec-and-target)
    (rspec-install-snippets)))
