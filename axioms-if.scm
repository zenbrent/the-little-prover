(load "j-bob/scheme/j-bob-lang.scm")

; The axioms of If (p27)
(dethm if-true (x y)
       (equal (if 't x y) x))

(dethm if-false (x y)
       (equal (if 'nil x y) y))

(dethm if-same (x y)
       (equal (if x y y) y))

(dethm if-nest-A (x y z)
       (if x (equal (if x y z) y) 't))

(dethm if-nest-E (x y z)
       (if x 't (equal (if x y z) z)))
