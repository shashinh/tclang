#lang br
(require "parser.rkt")

; this test driver exercises the parser and builds a parse tree according to the defined grammar
(parse-to-datum "++++-++++-++[R+-+[++++++++----+]-++L-]R.")