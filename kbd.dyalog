kbd←{
     ⍝ takes optional number of keys (default: both) as left argument and .klc file or filename as right argument
     ⍝ returns dfns style keyboard map with dead keys' tables below
     ⍝ limitations: max one character per keystroke, ignores separate CapsLock state

     klc←⊃⎕NGET⍣(1=≡,⍵)⊢⍵ 1 ⍝ load file if not given as argument
     ⍺←⍬                    ⍝ default left arg is none
     n←101 102⍳⊂⍺           ⍝ key count type
     3=n:⊃⍪⌿101 102 ∇¨⊂klc  ⍝ no left arg shows both

     kbd←0 76⍴''
     kbd⍪←n⊃'┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬─────────┐' '┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬─────────┐'
     kbd⍪←n⊃'│1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Backspace│' '│1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Backspace│'
     kbd⍪←n⊃'│0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │         │' '│0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │         │'
     kbd⍪←n⊃'├────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬──────┤' '├────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬──────┤'
     kbd⍪←n⊃'│Tab    │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7   │' '│Tab    │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Enter │'
     kbd⍪←n⊃'│       │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6   │' '│       │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │      │'
     kbd⍪←n⊃'├───────┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴──────┤' '├───────┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┐     │'
     kbd⍪←n⊃'│Caps    │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Enter     │' '│Caps    │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │     │'
     kbd⍪←n⊃'│Lock    │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │          │' '│Lock    │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │     │'
     kbd⍪←n⊃'├────────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──────────┤' '├──────┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴────┴─────┤'
     kbd⍪←n⊃'│Shift      │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Shift       │' '│Shift │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │1 7 │Shift       │'
     kbd⍪←n⊃'│           │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │            │' '│      │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │0 6 │            │'
     kbd⍪←n⊃'├───────┬───┴─┬──┴───┬┴────┴────┴────┴────┴────┴┬───┴──┬─┴────┼─────┬──────┤' '├──────┴┬───┴─┬──┴───┬┴────┴────┴────┴────┴────┴┬───┴──┬─┴────┼─────┬──────┤'
     kbd⍪←n⊃'│Ctrl   │Win  │Alt   │            1 7           │Alt Gr│Win   │Menu │Ctrl  │' '│Ctrl   │Win  │Alt   │            1 7           │Alt Gr│Win   │Menu │Ctrl  │'
     kbd⍪←n⊃'│       │     │      │            0 6           │      │      │     │      │' '│       │     │      │            0 6           │      │      │     │      │'
     kbd⍪←n⊃'└───────┴─────┴──────┴──────────────────────────┴──────┴──────┴─────┴──────┘' '└───────┴─────┴──────┴──────────────────────────┴──────┴──────┴─────┴──────┘'

     kTopLeft kSpace kDecimal k102←'29' '39' '53' '56'    ⍝ scan codes
     sNormal sShift sAltGr sAltGrShift←'0167' ⍝ shift states
     digits←⎕D,819⌶⎕A                         ⍝ base-36 digits

     Hex4s←'[\dabcdef]{4}'⎕S'&' ⍝ find four-digit hex numbers
     Hex←⊃∘digits¨1+16 16⊤⊢     ⍝ decimal to hex
     Char←⎕UCS 16⊥¯1+digits⍳4↑⊢ ⍝ hex to character
     Symbol←(3⌊≢)⊃⊃,' ',Char    ⍝ appropriate display symbol

     In←{1⍳⍨⍺∘(⊃⍷)¨⍵}¨∘⊂ ⍝ first beginning occurance of each ⍺ in ⍵
     Is←∊∘⊆              ⍝ ⍺ is one of ⍵

     whitesp←,∘Char¨'0009' '00a0' '0020' '2003' ⍝ tab nbsp space emsp
     visible←,∘Char¨'2409' '2419' '2420' '2422' ⍝ HT  /b   SP EM
     Visual←whitesp ⎕R visible                  ⍝ show invisible symbols

     Table←⍉'│'(⍪⍪⊣)(3 2⍴' @ ││',⍨⊃)⍪71↑1∘↓⍴⍨2,⍨(⌊2÷⍨≢) ⍝ dead key table

     shiftstate layout keyname deadkey keyname←'SHIFTSTATE' 'LAYOUT' 'KEYNAME' 'DEADKEY' 'KEYNAME'In klc ⍝ section cut-off points

     data←('DEADKEY'∘(⊃⍷)¨⊂⊢)deadkey↓0,keyname↑klc ⍝ dead key sections are before key names
     deadkeys←⊃⍪/(Table∘Visual Char¨∘Hex4s)¨data   ⍝ dead keys' tables

     data←layout↓klc↑⍨deadkey⌊keyname                  ⍝ key data section ends at whichever section follows
     data⌿⍨←⎕D∊⍨⊃¨data                                 ⍝ remove comments and blank lines
     matrix←⎕CSV⍠'Separator' 'Tab'⊂'(\t)\t'⎕R'\1'⊢data ⍝ remove duplicate tabs and parse

     matrix←⊃⍪⌿(⌿∘matrix)¨1 0=⊂matrix[;1]Is kTopLeft ⍝ move top left key to front
     matrix←⊃⍪⌿(⌿∘matrix)¨0 1=⊂matrix[;1]Is kSpace   ⍝ move space to back

     matrix⌿⍨←~matrix[;1]Is kDecimal(n⊃k102'[N/A]') ⍝ remove keys which are not shown

     row←⍸matrix[;1]Is Hex¨n⊃(43,⍨29+⍳11)(86,⍨43+⍳10) ⍝ the keys to rotate
     matrix←¯1⊖@row⊢matrix                            ⍝ rotate bottom to top and

     matrix,←' ' ⍝ provide space as fallback

     states←⎕D∩⊃¨shiftstate↓layout↑klc ⍝ extract the states' section
     columns←3+⍳≢states                ⍝ the normal column is column 4
     columns,←≢⍉matrix                 ⍝ fallback column if state is omitted

     indicesX←⍸kbd∊'17' ⍝ indices of placeholders for Shift+ and Shift+AltGr+
     indicesY←⍸kbd∊'06' ⍝ indices of placeholders for normal and AltGr+

     indices←indicesX/⍨,'@'∊¨matrix[;columns[states⍳sShift sAltGrShift]] ⍝ dead shifted keys
     indices,←indicesY/⍨,'@'∊¨matrix[;columns[states⍳sNormal sAltGr]]    ⍝ dead unshifted keys
     indices+←⊂0 1                                                       ⍝ move one column right

     symbols←'@'⊣¨indices                                         ⍝ one @ for each dead key
     symbols,←Symbol¨,matrix[;columns[states⍳sShift sAltGrShift]] ⍝ all the symbols for shifted keys
     symbols,←Symbol¨,matrix[;columns[states⍳sNormal sAltGr]]     ⍝ all the symbols for unshifted keys
     symbols←Visual symbols                                       ⍝ substitute with control pictures

     indices,←indicesX,indicesY ⍝ append the remaining indices

     deadkeys⍪⍨symbols@indices⊢kbd ⍝ make all the substitutions and append dead keys' tables
 }
