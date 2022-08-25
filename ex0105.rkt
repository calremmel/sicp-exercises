#lang racket


;;;; Exercise 1.5

;;; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using
;;; applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;;; Then he evaluates the expression

(test 0 (p))

;;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation?

;; This will result in an infinite loop, because the operands will be evaluated before the operator.
;; EAGER EVALUATION

;;; What behavior will he observe with an interpreter that uses normal-order evaluation?

;; This will produce 0, because the operands will not be evaluated until they are needed, therefore
;; (p) will never be evaluated.
;; LAZY EVALUATION