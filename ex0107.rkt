#lang racket

;;;; Exercise 1.7

;;; The good-enough? test used in computing square roots will not be very effective for finding the
;;; square roots of very small numbers. Also, in real computers, arithmetic operations are almost
;;; always performed with limited precision. This makes our test inadequate for very large numbers.
;;; Explain these statements, with examples showing how the test fails for small and large numbers.

;; For very small numbers, the acceptable distance for the good-enough? test will be comparatively
;; enormous, and will result in answers that are not even approximately useful.

;; Arithmetic requires being able to represent infinity, which a limited number of bits cannot do.
;; For that reason, there will always be slight rounding errors from the estimations required by
;; floating point arithmetic. These are more egregious when things become very large. (?)
;; Will the rounding error always be larger than the threshhold?

;;; An alternative strategy for implementing good-enough? is to watch how guess changes from one
;;; iteration to the next and to stop when the change is a very small fraction of the guess.
;;; Design a square-root procedure that uses this kind of end test. Does this work better for
;;; small and large numbers?

(define (sqrt-iter guess lastguess x)
  (if (good-enough? guess lastguess x)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess lastguess x)
  (< (abs(- guess lastguess)) (/ x 1000)))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter (improve 1.0 x) 1.0 x))