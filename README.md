
# tclang
A rudimentary Turing Complete language built upon Racket

## Description
Each + in the string increments the current byte by 1, and each - minus decrements it. L and R move the pointer left and right respectively (similar to a Turing Machine). \[ and \] start and end a loop, respectively.

## Generation of a parse tree
Parsing the given input string against the grammar defined in parser.rkt and building the parse tree
![parse tree](https://github.com/shashinh/tclang/blob/master/parser.png)

## Using the language
The below input string is translated into a sequence of for loops, each generating an ASCII character. Together, the input string is interpreted as "Hello, World!"

![hello](https://github.com/shashinh/tclang/blob/master/hello.png)
