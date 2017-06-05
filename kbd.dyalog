kbd←{
     ⍝ takes optional number of keys (default: both) as left argument and .klc filename as right argument
     ⍝ returns dfns style keyboard 16 76⍴map
     ⍝ limitations: max one character per keystroke, does not handle separate CapsLock state

     ⍺←⍬                 ⍝ default left arg is none
     n←101 102⍳⊂⍺        ⍝ key count type
     3=n:⊃⍪⌿101 102 ∇¨⊂⍵ ⍝ no left arg shows both
     klc←⊃⎕NGET ⍵ 1      ⍝ load file

     kbd←0 76⍴''
     kbd⍪←n⊃'┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬─────────┐' '┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬─────────┐'
     kbd⍪←n⊃'│X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Backspace│' '│X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Backspace│'
     kbd⍪←n⊃'│Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │         │' '│Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │         │'
     kbd⍪←n⊃'├────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬──────┤' '├────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬──────┤'
     kbd⍪←n⊃'│Tab    │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X   │' '│Tab    │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Enter │'
     kbd⍪←n⊃'│       │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y   │' '│       │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │      │'
     kbd⍪←n⊃'├───────┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴──────┤' '├───────┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┐     │'
     kbd⍪←n⊃'│Caps    │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Enter     │' '│Caps    │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │     │'
     kbd⍪←n⊃'│Lock    │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │          │' '│Lock    │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │     │'
     kbd⍪←n⊃'├────────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──────────┤' '├──────┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴────┴─────┤'
     kbd⍪←n⊃'│Shift      │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Shift       │' '│Shift │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │X X │Shift       │'
     kbd⍪←n⊃'│           │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │            │' '│      │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │Y Y │            │'
     kbd⍪←n⊃'├───────┬───┴─┬──┴───┬┴────┴────┴────┴────┴────┴┬───┴──┬─┴────┼─────┬──────┤' '├──────┴┬───┴─┬──┴───┬┴────┴────┴────┴────┴────┴┬───┴──┬─┴────┼─────┬──────┤'
     kbd⍪←n⊃'│Ctrl   │Win  │Alt   │                          │Alt Gr│Win   │Menu │Ctrl  │' '│Ctrl   │Win  │Alt   │                          │Alt Gr│Win   │Menu │Ctrl  │'
     kbd⍪←n⊃'│       │     │      │                          │      │      │     │      │' '│       │     │      │                          │      │      │     │      │'
     kbd⍪←n⊃'└───────┴─────┴──────┴──────────────────────────┴──────┴──────┴─────┴──────┘' '└───────┴─────┴──────┴──────────────────────────┴──────┴──────┴─────┴──────┘'

     kTopLeft kSpace kDecimal k102←'29' '39' '53' '56' ⍝ scan codes
     sNormal sShift sAltGr sAltGrShift←'0167'          ⍝ shift states
     digits←⎕D,819⌶⎕A                                  ⍝ base-36 digits

     Hex←⊃∘digits¨1+16 16⊤⊢     ⍝ decimal to hex
     Char←⎕UCS 16⊥¯1+digits⍳4↑⊢ ⍝ hex to character
     Symbol←(3⌊≢)⊃⊃,' ',Char    ⍝ appropriate display symbol
     In←{1⍳⍨⍺∘(⊃⍷)¨⍵}¨∘⊂        ⍝ Boolean for each element of ⍵ if begins with ⍺
     Is←∊∘⊆                     ⍝ ⍺ is one of ⍵

     shiftstate layout keyname deadkey←'SHIFTSTATE' 'LAYOUT' 'KEYNAME' 'DEADKEY'In klc ⍝ section cut off points

     data←layout↓klc↑⍨deadkey⌊keyname                     ⍝ data section ends at whichever section follows
     data⌿⍨←⎕D∊⍨⊃¨data                                    ⍝ remove comments and blank lines
     matrix←⎕CSV⍠'Separator' 'Tab'⊂'(\t)\t'⎕R'\1'⊢data    ⍝ remove duplicate tabs and parse

     matrix←⊃⍪⌿(⌿∘matrix)¨1 0=⊂matrix[;1]Is kTopLeft ⍝ move top left key to front

     matrix⌿⍨←~matrix[;1]Is kSpace kDecimal,n⌷k102'[N/A]' ⍝ remove keys which are not shown

     row←⍸matrix[;1]Is Hex¨n⊃(43,⍨29+⍳11)(86,⍨43+⍳10) ⍝ the keys to rotate
     matrix←¯1⊖@row⊢matrix                            ⍝ rotate bottom to top and

     matrix,←' '  ⍝ provide space as fallback

     states←⎕D∩⊃¨shiftstate↓layout↑klc ⍝ extract the states' section
     columns←3+⍳≢states                ⍝ the normal column is column 4
     columns,←≢⍉matrix                 ⍝ fallback column if state is omitted

     indicesX←⍸'X'=kbd ⍝ indices of placeholders for shifted keys
     indicesY←⍸'Y'=kbd ⍝ indices of placeholders for unshifted keys

     indices←indicesX/⍨,'@'∊¨matrix[;columns[states⍳sShift sAltGrShift]] ⍝ dead shifted keys
     indices,←indicesY/⍨,'@'∊¨matrix[;columns[states⍳sNormal sAltGr]]    ⍝ dead unshifted keys
     indices+←⊂0 1                                                       ⍝ move one column right

     symbols←'@'⊣¨indices                                         ⍝ one @ for each dead key
     symbols,←Symbol¨,matrix[;columns[states⍳sShift sAltGrShift]] ⍝ all the symbols for shifted keys
     symbols,←Symbol¨,matrix[;columns[states⍳sNormal sAltGr]]     ⍝ all the symbols for unshifted keys

     indices,←indicesX,indicesY ⍝ append the remaining indices

     symbols@indices⊢kbd ⍝ make all the substitutions
 }
