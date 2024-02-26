#lang racket

(provide add sub)

; only test submodule will depend on rackunit
(module+ test
  (require rackunit))

(define (add a b) (+ a b))
(module+ test
  ; not running during module import
  (display "tests are running during development")
  (check-equal? (add 1 2) 3))

(define (sub a b) (- a b))
; tests are very close to code!
(module+ test
  (check-equal? (sub 1 2) -1))
