(use-package tuareg
  :config
  (use-package ocp-indent)

  (use-package merlin
    :hook (tuareg-mode . merlin-mode)
    :config
    (setq auto-mode-alist (append '(("\\.ml[ily]?$" . tuareg-mode)) auto-mode-alist)
          merlin-command "~/.opam/5.0.0/bin/ocamlmerlin"))

  (use-package ocamlformat
    :config
    (define-key tuareg-mode-map (kbd "C-x x f") 'ocamlformat)))

(provide 'init-ocaml)
