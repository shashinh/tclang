#lang br/quicklang

(define-macro (tclang-module-begin PARSE-TREE)
  #'(#%module-begin
     PARSE-TREE))
(provide (rename-out [tclang-module-begin #%module-begin]))

(define-macro (tclang-program OP-OR-LOOP-ARG ...)
  #'(void OP-OR-LOOP-ARG ...))
(provide tclang-program)

(define-macro (tclang-loop "[" OP-OR-LOOP-ARG ... "]")
  #'(until (zero? (current-byte))
      OP-OR-LOOP-ARG ...))
(provide tclang-loop)

(define-macro-cases tclang-op
  [(tclang-op "R") #'(right)]        
  [(tclang-op "L") #'(left)]     
  [(tclang-op "+") #'(plus)]      
  [(tclang-op "-") #'(minus)]    
  [(tclang-op ".") #'(period)] 
  [(tclang-op ",") #'(comma)])
(provide tclang-op)

(define arr (make-vector 30000 0))
(define ptr 0)

(define (current-byte) (vector-ref arr ptr))
(define (set-current-byte! val) (vector-set! arr ptr val))

(define (right) (set! ptr (add1 ptr)))
(define (left) (set! ptr (sub1 ptr)))
(define (plus) (set-current-byte! (add1 (current-byte))))
(define (minus) (set-current-byte! (sub1 (current-byte))))
(define (period) (write-byte (current-byte)))
(define (comma) (set-current-byte! (read-byte)))