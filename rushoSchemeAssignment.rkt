(define ones (list '() 2 '() 4 '() 6 '() 7'() 8 '()))
(define sixties (list '() 52 '() 54 '() 66 '() 67 '() 68 '()))
(define tens (list ones 10 '() 30 '() 50 sixties 70 '() 90 '()))
(define ninehundreds (list '() 930 '() 940 '() 960 '() 970 '() 988 '()))
(define tree (list tens 100 '() 300 '() 500 '() 700 '() 900 ninehundreds ))

(define (walk n)
  >(cond ( = walk n 0 #f ; base case: if the list is 0, then returns false,
        (or = walk n null?) #f ; base case: or if the list is empty, then it also returns false.
        (or (< = n ones) (> = n ones) #t
        (or (< = n sixties) (> = n sixties) #t
        (or (< = n tens) (> = n tens) #t
        (or (< = n ninehundreds) (> = n ninehundreds) #t
        (walk n) ; calls the walk function again.
  )))))))

(walk tree 0)
(walk tree 6)
(walk tree 67)
(walk tree 750)
(walk tree 970)
(walk tree 900)
(walk tree 1100)