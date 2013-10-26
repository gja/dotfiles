;;; gja --- Personal settings of Tejas Dinkar

;;; Commentary:
;;; Feel free to fork
;;; Code:
(defun local-fix-indentation ()
  "Fix to not wrap, or give stupid warnings after 80 chars."
  (progn
    (visual-line-mode t)))

(prelude-ensure-module-deps '(adaptive-wrap))
(setq visual-line-fringe-indicators '(left-curly-arrow nil))
(setq whitespace-line-column 1000)

(add-hook 'ruby-mode-hook 'local-fix-indentation)

(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-visual-line-mode)

(prelude-ensure-module-deps '(solarized-theme))
(load-theme 'solarized-dark t)

(auto-complete-mode)
(provide 'gja)
;;; gja.el ends here
