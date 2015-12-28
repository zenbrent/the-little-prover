(load "j-bob/scheme/j-bob-lang.scm")

; (p20-24)
(dethm jabberwocky (x)
       (if (brillig x)
           (if (slithy x)
               (equal (mimsy x) 'borogrove)
               (equal (mome x) 'rath))
           (if (uffish x)
               (equal (frumious x) 'bandersnatch)
               (equal (frabjous x) 'beamish))))


; (if (brillig '(callooh callay))
;     (if (slithy '(callooh callay))
;         (equal (mimsy '(callooh callay)) 'borogrove)
;         (equal (mome '(callooh callay)) 'rath))
;     (if (uffish '(callooh callay))
;         (equal (frumious '(callooh callay)) 'bandersnatch)
;         (equal (frabjous '(callooh callay)) 'beamish)))

; (cons 'gyre
;       (if (uffish '(callooh callay))
;           (cons 'gimble
;                 (if (brillig ('callooh callay))
;                     (cons 'borogrove ('outgrabe))
;                     (cons 'bandersnatch '(wabe))))
;           (cons (frabjous '(callooh callay)) '(vorpal))))

; (cons 'gyre
;       (if (uffish '(callooh callay))
;           (cons 'gimble
;                 (if (brillig ('callooh callay))
;                     (cons 'borogrove ('outgrabe))
;                     (cons 'bandersnatch '(wabe))))
;           (cons (frabjous '(callooh callay)) '(vorpal))))

