;; Ruby - Autoload Files in Ruby-Mode
(let* ((ruby-files '(".rake" ".thor" "Gemfile" "Rakefile" "Crushfile" "Capfile"))
       (ruby-regexp (concat (regexp-opt ruby-files t) "\\'")))
  (add-to-list 'auto-mode-alist (cons ruby-regexp 'ruby-mode)))
