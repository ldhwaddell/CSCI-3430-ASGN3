(defun factorial (n)
; if n is 1, output 1
(if (or (= n 1) (= n 0))
  1
  ; else, output n * recursive call of itself - 1
  (* n (factorial(- n 1)))))
