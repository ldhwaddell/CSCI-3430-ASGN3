; function to check validity of letter

; function to check validity of numbers

; function to check length of list

; function to check each item in list is single character
(defun notlist (element)
  ; return true if element is not a list
  (cond ((listp element)
    nil)
    (t)))


; check if input is empty
(defun emptyInput (l)
  ; is list is empty return nil
  (cond ((null l)
    nil)
    (t)))


(defun checkLength (l)
  (cond ((eq (length l) 6)
    t)
    (nil)))

(defun NSLicense (l)
  (cond 
  ((and (emptyInput l) (checkLength l))t)
  (nil)))


(every #'eq (mapcar #'contains '(1 2 3)) `(T T T))

; ####################Functions above line work####################
(defun isUpper (element)
  (cond ((upper-case-p element)
    nil)
    (t)))

(defun isValidNum (l)
  (cond ((eq (if (member (car l) '(0 1 2 3 4 5 6 7 8 9)) t nil)t))
  ((null l) nil)
  ((isValidNum (cdr l)))))

(defun isValidNum (l)
  (cond 
  (member (car l) '(0 1 2 3 4 5 6 7 8 9))
  ((null l) nil)
  ((isValidNum (cdr l)))))



(defun NSLicense (l)
  (cond 
  ((eq(if (member (car l) '(1 2 3 4))t nil)t))
  ((null l) nil)
  ((isValidNum (cdr l)))))


(defun contains (element) 
(if (member element `(1 2 3 4 5 6 7 8 9 0)) 
  t 
  nil))

(defun isValidNum (l)
(if (contains (car l))
  (contains (cdr l))
  nil))





(defun factorial (n)
; if n is 1, output 1
(if (= n 1)
  1
  ; else, output n * recursive call of itself - 1
  (* n (factorial(- n 1)))))


(every #`= `(mapcar #'contains '(9 8 7)) `(T T T))

(if (member 1 '(2 3 4))t nil)

;(member 23 '(0 1 2 3 4 5 6 7 8 9))

; use (subseq `(1 2 3) 0)? 0 3 and 3 

(if (member `A '(A B C)) t nil)



(defun isthere (element l)
  ; if element equals value of l and l is not a list
  (cond ((and (eq element (car l)) (notlist (car l))) t)
  ; if l is null return nil
  ((null l) nil)
  ; neither condition met, recurse to next item in list
  ((isthere element (cdr l)))))