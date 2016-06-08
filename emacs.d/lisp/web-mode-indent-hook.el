;;; web-mode-indent-hook.el --- settings for web-mode

;;; Code:

(defun marchi-web-mode-indent ()
  "Hooks for Web Mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(provide 'web-mode-indent-hook)

;;; web-mode-indent-hook.el ends here
