;;; default-frame.el --- settings for default frame

;;; Code:

(setq inhibit-startup-screen t)

(menu-bar-mode -1)
(global-linum-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(load-theme "adwaita" 1)

(provide 'default-frame)

;;; default-frame.el ends here
