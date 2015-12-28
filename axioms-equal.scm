(load "j-bob/scheme/j-bob-lang.scm")

; The axioms of Equal (p18)

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
; (if (if (equal a 't)
;         a
;         (equal 'or '(black coffee)))
;     c
;     c)
