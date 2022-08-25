#lang racket

; Exercise 1.15

(define (cube x)
  (* x x x))

(define (p x)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.7)
(p (sine (/ 12.7 3.0)))
(p (sine 4.23))
(p (p (sine (/ 4.23 3.0))))
(p (p (sine 1.41)))
(p (p (p (sine (/ 1.41 3.0)))))
(p (p (p (sine 0.47))))
(p (p (p (p (sine (/ 0.47 3.0))))))
(p (p (p (p (sine 0.156)))))
(p (p (p (p (p (sine (/ 0.156 3.0)))))))

; a: 5 times
; b: O(log(a))