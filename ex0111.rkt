#lang racket

;;;; Exercise 1.11

;;; A function f is defined by the rule that
;;; f(n) = n if n<3 and
;;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
;;; Write a procedure that computes f by means of a recursive process.
;;; Write a procedure that computes f by means of an iterative process.

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f-iter a b c counter n)
  (if (= counter n)
      a
      (f-iter b c (+ c (* 2 b) (* 3 a)) (+ counter 1) n))
  )

(define (f-start n)
  (f-iter 0 1 2 0 n)
  )