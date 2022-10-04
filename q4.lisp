; first attempt at isthere logic
"
(defun isthere (element l)
  (cond ((equal element (car l)) t)
  ((null l) nil)
  ((isthere element (cdr l)))))
"

; first attempt at islist logic
"
(defun islist (element)
  (cond ((listp element)
    (format t "a list" element))
    (t (format t "not a list" element))))
"

; working example:

(defun notlist (element)
  ; return true if element is not a list
  (cond ((listp element)
    nil)
    (t)))

(defun isthere (element l)
  ; if element equals value of l and l is not a list
  (cond ((and (eq element (car l)) (notlist (car l))) t)
  ; if l is null return nil
  ((null l) nil)
  ; neither condition met, recurse to next item in list
  ((isthere element (cdr l)))))
