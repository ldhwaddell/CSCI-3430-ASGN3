; define function

; cond that the car of atom is desired
    ; if so, return true
    ; if it isnt current value:
        ; cond that if there is a next value in list
            ; call function on next value
            ; return false



(defun isthere (e l)
  (cond
   ((null l) nil)
   ((equal e (car l)) t)
   ((isthere e (cdr l)))))
