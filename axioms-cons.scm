(load "j-bob/scheme/j-bob-lang.scm")

; The axioms of Cons (p26)
; A theorem is an expression that is always true.
; Axioms are theorems that are assumed to be true, whereas theorems must be shown to be true.

(dethm atom/cons (x y)
       (equal (atom (cons x y)) 'nil))

(dethm car/cons (x y)
       (equal (car (cons x y)) x))

(dethm cdr/cons (x y)
       (equal (cdr (cons x y)) y))

(dethm cons/car+cdr (x)
       (if (atom x) 't (equal (cons (car x) (cdr x)) x)))
