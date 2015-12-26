#lang R5RS
; /Applications/Racket\ v6.3/bin/racket -i -l xrepl -l racket/base

(load "j-bob/scheme/j-bob-lang.scm")

; The axioms of Cons (initial)
; A theorem is an expression that is always true.
; Axioms are theorems that are assumed to be true, whereas theorems must be shown to be true.

(dethm atom/cons (x y)
       (equal (atom (cons x y)) 'nil))

(dethm car/cons (x y)
       (equal (car (cons x y)) x))

(dethm cdr/cons (x y)
       (equal (cdr (cons x y)) y))

; The axioms of Equal (initial)
(dethm equal-same (x)
       (equal (equal x x) 't))

(dethm equal-swap (x y)
       (equal (equal x y) (equal y x)))

; The Law of Dethm (initial)
; For any theorem
; (dethm name (x1 ... xn)
;        bodyx),
; the variables x1 ... xn
; in bodyx can be replaced with any corresponding expressions e1 ... en.
; The result, bodye, can be used to rewrite a focus p to become q provided
; bodye is either (equal p q) or (equal q p).


