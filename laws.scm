; The law of Dethm (p18)
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
