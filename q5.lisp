(defun notlist (element)
  ; return true if element is not a list
  (cond ((listp element)
    nil)
    (t)))

(defun checkLength (l)
  ; return true if list is exactly 6 element long
  (cond ((eq (length l) 6)
    t)
    (nil)))

(defun validateList (l)
  ; return true if list is 6 elements long and each one is not a list
  (if (and (checkLength l) (every #'eq (mapcar #'notlist l) '(T T T T T T)))
  t
  nil))

(defun containsNum (element) 
; check that element is in the set of valid numbers
(if (member element `(1 2 3 4 5 6 7 8 9 0)) 
  t 
  nil))

(defun validateFirstLetter (element)
; check that element is in the set of valid letters) 
(if (member element `(A B C D E F G H I J)) 
  t 
  nil))

(defun validateLetters (element)
; check that second and third letters are single letters in alphabet
(if (member element `(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)) 
  t 
  nil))

(defun NSLicense (l)
  ; check that list is of valid length and contains no sublists
  (if (validateList l)
  ; if first 3 items are valid letters and second 3 are valid numbers, return true
  (cond ((and 
    (every #'eq (mapcar #'validateFirstLetter (subseq l 0 1)) '(T))
    (every #'eq (mapcar #'validateLetters (subseq l 1 3)) '(T T)) 
    (every #'eq (mapcar #'containsNum (subseq l 3 6)) '(T T T))) t))
  nil))