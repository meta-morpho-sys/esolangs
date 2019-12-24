[ This program prints "Hello Darren!" and a newline to the screen, its
  length is 116 active command characters.

  This loop is an "initial comment loop", a simple way of adding a comment
  to a BF program such that you don't have to worry about any command
  characters. Any ".", ",", "+", "-", "<" and ">" characters are simply
  ignored, the "[" and "]" characters just have to be balanced. This
  loop and the commands it contains are ignored because the current cell
  defaults to a value of 0; the 0 value causes this loop to be skipped.
]
++++++++               Set Cell #0 to 8
[
    >++++              Add 5 to Cell #1; this will always set Cell #1 to 5
    [                   as the cell will be cleared by the loop
        >++             Add 2 to Cell #2
        >+++            Add 3 to Cell #3
        >++             Add 2 to Cell #4
        >+++            Add 3 to Cell #5
        >+              Add 1 to Cell #6
        <<<<<-           Decrement the loop counter in Cell #1
    ]                   Loop till Cell #1 is zero; number of iterations is 5
    >+                  Add 1 to Cell #2
    >+                  Add 1 to Cell #3
    >>>>+               Add 1 to Cell #7
    [<]                 Move back to the first zero cell you find; this will
                        be Cell #1 which was cleared by the previous loop
    <-                  Decrement the loop Counter in Cell #0
]                       Loop till Cell #0 is zero; number of iterations is 8

The result of this is:
Cell No :               0   1   2   3   4   5    6    7
Contents:               0   0  72 104  64   96   32   8
ASCII Names/Glyphs:             H   h   `    `   spc  \b  
Pointer :               ^

>>.                     Cell #2 has value 72 which is 'H'
>---.                   Subtract 3 from Cell #3 to get 101 which is 'e'
+++++++..+++.           Likewise for 'llo' from Cell #3
>>>.                    Cell #6 is 32 for the space
<<++++.                 Add 4 to Cell #4 for 68 to give a 'D'
>+.                      Move to Cell #5 to give an 'a'
<<+++..                 Add 3 to Cell #3 for 'rr'
>>++++.                 Add 4 to cell #5 for 'e'
<<----.                 Subtract 4 from cell #3 for 'n'
>>>+.                    Add 1 to Cell #6 gives us an exclamation point
>.                    And finally a newline from Cell #7

[Final expression]
++++++++[>++++[>++>+++>++>+++>+<<<<<-]>+>+>>>>+[<]<-]>>.>---.+++++++..+++.>>>.<<++++.>+.<<+++..>>++++.<<----.>>>+.>.
