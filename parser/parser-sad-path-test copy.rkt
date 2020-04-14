#lang br
(require "parser.rkt")

; below parse string has a mismatched paranthesis. Parser should return an error.
(parse-to-datum "++++-++++-++[R+-+++++++++----+]-++L-]R.")