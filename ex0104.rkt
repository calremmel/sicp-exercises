#lang racket

;;;; Exercise 1.4

;;; Observe that our model of evaluation allows for
;;; combinations whose operators are compound expressions.
;;; Use this observation to describe
;;; the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; If b is greater than zero, add a and b
;; If b is less than zero, subtract b from a