(load "skim-unit.scm")

(assert/equal (cond ((> 3 2) 'greater) ((< 3 2) 'less))
			  'greater)
(assert/equal (cond ((> 3 3) 'greater) ((< 3 3) 'less) (else 'equal))
			  'equal)

; TODO: => special form
;(cond ((assv 'b '((a 1) (b 2))) => cadr)
;                        (else #f))                 ===>  2

(unit-test-handler-results)
