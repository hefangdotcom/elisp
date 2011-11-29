(require 'cl)
(add-to-list 'load-path "c:/luc/")

;;(require 'commands)
(global-set-key [f1] '.emacs)
(global-set-key [f2] 'dired)
(global-set-key [f3] 'calendar)

;; 2 ways to start viper mode
(global-set-key [f5] 'toggle-viper-mode) 
(global-set-key (kbd "C-x C-v") 'toggle-viper-mode) 

(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "C-l") 'buffer-menu)  ; 
(global-set-key (kbd "C-9") 'kill-whole-line) ; 
(global-set-key [f12] 'load-file)

(setq visible-bell t)
;;;(setq viper-mode t)
(setq kill-whole-line t)
(setq tramp-default-method "ssh")
;;;(setq tabbar-mode 't)
;;;(require 'viper)
;;(require 'tabbar)
;; org-mode

;;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;;(autoload 'viper-mode)
(custom-set-variables
  ;; custom-set-variables was added by custom.
  ;; if you edit it by hand, you could mess it up, so be careful.
  ;; your init file should contain only one such instance.
  ;; if there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(initialuffer-choice "~/"))



(defun athens()
	(interactive)
	(switch-to-buffer (find-file-noselect athen)))

(defun rome()
	(interactive)
	(switch-to-buffer (find-file-noselect "c:/luc/months/201003/rome")))

(defun .emacs()
	(interactive)
(switch-to-buffer (find-file-noselect "c:/luc/.emacs")))

(defun todo()
	(interactive)
(switch-to-buffer (find-file-noselect "~/todo")))

(defun toggle-list-buffers()
;;(if (not(get-buffer "buffers list"
        (kill-buffer *buffer list*))

;;(setq debug-on-error nil)
(setq debug-on-error t)
(global-set-key [f6] 'toggle-list-buffers)
;;;  re-define shortcuts
;;;  c-v to visual-mode or highlight mode
;;(global-set-key (kbd "C-v")'visual-line-mode)

;(defconst athen "~/201003/athens"  path to athens" )

(defun open-it()
	(interactive)
	(switch-to-buffer (find-file-noselect athen)))

(defun num28()
	(interactive)
	(dotimes (i 28) (insert (format "%2d\n"  (1+ i)))))

(defun num(to)
	(interactive)
	(dotimes (i to) (insert (format "%2d\n"  (1+ i)))))

(defun my-scratch()
	(interactive)
(switch-to-buffer (find-file-noselect "~/my-scratch")))

(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))
