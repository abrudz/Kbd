 name←make15;header
 ⍝ make the kbd function version 15.0 compatible
 header←⊂'kbd←{'
 header,←⊂'     ⍝ drop-ins for new features in 16.0'
 header,←⊂'     at←{⍺←⊢                                     ⍝ Substitution: (⍺ ⍺⍺ ⍵) at ⍵⍵ in ⍵.'
 header,←⊂'         0::⎕SIGNAL ⎕EN                          ⍝ signal any error to caller'
 header,←⊂'         3=⎕NC''⍵⍵'':⍺ ⍺⍺ ∇∇((,⍵⊢¨~~⍵⍵ ⍵)/,⍳⍴⍵)⊢⍵  ⍝ selector is function: bool mask'
 header,←⊂'         3∧.≠⎕NC 2 2⍴''⍺ ⍺⍺'':⎕SIGNAL 2            ⍝ both ⍺ and ⍺⍺ arrays: syntax err'
 header,←⊂'         3≠⎕NC''⍺⍺'':⍺⍺⊣∇∇ ⍵⍵⊢⍵                    ⍝ modifier is array: substitution'
 header,←⊂'         1<|≡⍵⍵:A⊣A[⍵⍵]←⍺ ⍺⍺(A←⍵)[⍵⍵]            ⍝ nested: reach/choose indexing'
 header,←⊂'         I←(⊂⍵⍵)⌷[⎕IO]⍳⍴⍵                        ⍝ simple: major cell selection'
 header,←⊂'         A⊣A[I]←⍺ ⍺⍺(A←⍵)[I]                     ⍝ nb: duplicate indices ignored'
 header,←⊂'     }'
 header,←⊂'     where←{(,⍵)/,⍳⍴⍵}           ⍝ ⍸⍵'
 header,←⊂'     nest←{⊂⍣(1=≡⍵)⊢⍵}           ⍝ ⊆⍵'
 header,←⊂'     ∆CSV←↑(⎕UCS 9)(1↓¨,⊂⍨⊣=,)¨⊃ ⍝ ⎕CSV (limited functionality)'
 header,←⊂''

 name←⎕FX header,1↓'@([^'' ])' '⍸' '⊆' '⎕CSV⍠''Separator'' ''Tab'''⎕R' at \1' ' where ' ' nest ' ' ∆CSV'⎕NR'kbd'
