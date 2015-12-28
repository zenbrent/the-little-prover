(load "j-bob/scheme/j-bob-lang.scm")

; The axioms of If (initial)
(dethm if-true (x y)
       (equal (if 't x y) x))

(dethm if-false (x y)
       (equal (if 'nil x y) x))

(dethm if-same (x y)
       (equal (if x y y) y))

; The axioms of Equal (final)

(dethm equal-same (x)
       (equal (equal x x) 't))

(dethm equal-swap (x y)
       (equal (equal x y) (equal y x)))

(dethm equal-if (x y)
       ; (equal x y) is a premise -- an if question such that the
       ; focus can be found in either the if answer or the if else.
       (if (equal x y) (equal x y) 't))

; Here, (equal a 't) is a premise becasue a is equal to (equal a 't),
; so (equal a 't) can be found in the if answer.
(if (if (equal a 't)
        a
        (equal 'or '(black coffee)))
    c
    c)

(dethm jabberwocky (x)
       (if (brillig x)
           (if (slithy x)
               (equal (mimsy x) 'borogrove)
               (equal (mome x) 'rath))
           (if (uffish x)
               (equal (frumious x) 'bandersnatch)
               (equal (frabjous x) 'beamish))))


(if (brillig '(callooh callay))
    (if (slithy '(callooh callay))
        (equal (mimsy '(callooh callay)) 'borogrove)
        (equal (mome '(callooh callay)) 'rath))
    (if (uffish '(callooh callay))
        (equal (frumious '(callooh callay)) 'bandersnatch)
        (equal (frabjous '(callooh callay)) 'beamish)))

(cons 'gyre
      (if (uffish '(callooh callay))
          (cons 'gimble
                (if (brillig ('callooh callay))
                    (cons 'borogrove ('outgrabe))
                    (cons 'bandersnatch '(wabe))))
          (cons (frabjous '(callooh callay)) '(vorpal))))

; (cons 'gyre
;       (if (uffish '(callooh callay))
;           (cons 'gimble
;                 (if (brillig ('callooh callay))
;                     (cons 'borogrove ('outgrabe))
;                     (cons 'bandersnatch '(wabe))))
;           (cons (frabjous '(callooh callay)) '(vorpal))))


; The law of Dethm (revised!)
; For any theorem
; (dethm name (x1 ... xn) bodyx)
; the variables x1 ... xn in bodyx can be replaced with any
; corresponding expressions e1 ... en.
; (dethm name (e1 ... en) bodye)
; The result, bodye, can be used to
; rewrite a focus as follows:
;
; 1. bodye must contain the conclusion (equal p q) or (equal q p),
; 2. the conclusion must not be found in the QUESTION of any if (in the answer or
;    else is ok) or in the argument of any function application,
; 3. and if the conclusion can be found in an if answer (respectively else),
;    then the focus must be found in an if answer (respectively else)
;    with the same question.
