#lang racket

;;;; Exercise 1.8

;;; Newton's method for cube roots is based on the fact that if y is an approximation to the cube
;;; root of x, then a better approximation is given by the value (image here)


;;; Use this formula to implement a cube-root procedure analogous to the square-root procedure.

(define (cube-iter last-guess guess x)
  (if (good-enough? last-guess guess)
      guess
      (cube-iter guess (improve guess x) x)))

(define (good-enough? last-guess guess)
  (< (abs (- guess last-guess)) .0001))

(define (improve guess x)
  (/
   (+ (/ x (* guess guess))
      (* 2 guess)) 3)
  )

(define (cbrt x)
  (cube-iter 1 (improve 1 x) x)
  )