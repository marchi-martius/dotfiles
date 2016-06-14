;;; default-frame.el --- settings for default frame

;;; Code:

(setq inhibit-startup-screen t)

(add-to-list 'default-frame-alist '(font . "Iosevka-14"))
(add-to-list 'default-frame-alist '(width . 270))
(add-to-list 'default-frame-alist '(height . 53))

(when (not (display-graphic-p))
  (menu-bar-mode -1))

(global-linum-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(provide 'default-frame)

;;; default-frame.el ends here
