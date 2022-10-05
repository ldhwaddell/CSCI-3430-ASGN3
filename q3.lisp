(defun factorial (n)
; if n is 1, output 1
(if (= n 1)
  1
  ; else, output n * recursive call of itself - 1
  (* n (factorial(- n 1)))))