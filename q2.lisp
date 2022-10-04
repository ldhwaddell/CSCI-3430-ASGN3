; defines a function called should-be-constant 
; with no arguments and a body that is just the list (A B C)
(defun should-be-constant () '(A B C))
; letting the variable stuff be the result of the expression "should-be-constant"
; The body of this let statement sets the third element in the list stuff to "bizarre"
(let ((stuff (should-be-constant))) (setf (third stuff) 'bizarre)) 
(should-be-constant) 
stuff