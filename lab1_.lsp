;gnu clisp 2.49
(print '(Volodia Pylypenko IP-63 (19)))
(terpri)
(setq l1 (list 'h 'g (list 2 3) 8 7 (list 'T 'R)))
(print l1)
(setq l2 (list 2 1 (+ 4 5)))
(print l2)
(setq l3 (list 'ty 'pe 'ch 'ar 're 'al (list 'h 'g))) 
(print l3)
(terpri)

(print 'Task1)
(write ((lambda (p1 p2 p3) (list (car p1) (car p2) (car p3))) l1 l2 l3))

(print 'Task2)
(defun task2 (p1 p2 p3)
    (list (third p1) (third p2) (third p3))
)
(write (task2 l1 l2 l3))

(defun task3 (lst)
    
    (cond ((listp (first lst))
               (rotatef (nth 0 lst) (nth (- (length lst) 1) lst))
               (block nil (return lst))
           )
          (t 
               (delete (elt lst 1) lst)
           )
     )
 )
    
(setq lst1 (list 1 (list 3 2) 1 0))
(print 'Task3)
(write lst1)
(write '->)
(write (task3 lst1))
