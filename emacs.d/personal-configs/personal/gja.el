(prelude-ensure-module-deps '(adaptive-wrap))
(setq visual-line-fringe-indicators '(left-curly-arrow nil))
(visual-line-mode t)

(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-visual-line-mode)

(prelude-ensure-module-deps '(solarized-theme))
(load-theme 'solarized-dark t)

(auto-complete-mode)
