#lang brag
; defines the grammar for tclang
; use the parser test drivers to build a parse tree
; + and - increment and decrement the value of the current byte
; R and L move the pointer left and right, like the head of a Turing Machine

tclang-program : (tclang-op | tclang-loop)*
tclang-loop : "[" (tclang-op | tclang-loop)* "]"
tclang-op : "R" | "L" | "+" | "-" | "." | ","