#lang racket

;;;; Exercise 1.13

;;; Prove that Fib(n) is the closest integer to
;;; ϕ^n/√5, where ϕ = (1 + √5)/2. Hint: Let ψ = (1 −√5)/2.
;;; Use induction and the definition of the Fibonacci numbers
;;; (see Section 1.2.2) to prove that Fib(n) = (ϕ^n − ψ^n)/√5.

; definitions

(define phi (/ (+ 1 (sqrt 5)) 2))
(define psi (/ (- 1 (sqrt 5)) 2))

; functions

(define (fib n)
  (/ (- (expt phi n) (expt psi n)) (sqrt 5)))

; main

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
(fib 9)
(fib 10)