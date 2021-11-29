# ASCII symbol compositions

## Principles
The composition input system is designed to be easy to pick up, while only remembering three simple rules:

*  If an ASCII character is similar to an APL glyph, then double the APL glyph, e.g. `xx` gives `×` and `TT` gives `⊤` and `cc` gives `⊂` and `""` gives `¨` and `ww` gives `⍵`.

* Otherwise, if two ASCII characters combined would approximate an APL glyph, then use those two (generally in any order, but from left to right if the combination is by juxtaposition rather than overlaying), e.g. `:-` gives `÷` and `o"` gives `⍤` and `\O` gives `⍉` and `e_` gives `⍷` and `Z-` gives `≢` and <code>-|</code> gives `⊣` and <code>|-</code> gives `⊢`.

* Otherwise (if it isn't possible to approximate an entire APL glyphusing only two ASCII characters) use two ASCII characters that combine to the left or right half (or slightly more than half) of the APL glyph, e.g. `[:` gives `⍠` and `-]` gives `⌹` and `[<` gives `⌺` and `[>` gives `⍄`.

## Notes
* Not every symbol has a meaning in any or every APL implementation or dialect. Some symbols have different meanings in different implementations and dialects. The following are listed with their default [Dyalog APL](https://apl.wiki/Dyalog_APL) meanings and some [extensions](https://github.com/abrudz/dyalog-apl-extended).

* Not every APL symbol is included in every keyboard layout. Please [open an issue](https://github.com/abrudz/Kbd/issues/new) to request a symbol's inclusion in an existing layout.

* Some symbols resemple Greek or Latin characters, but Unicode categorises them as special mathematical or APL variants. Unicode also has some instances of "up" and "down" swapped when it comes to tack symbols.

* Most compositions are commutative (ASCII symbols can be entered in either order), but where the composition is visually horizontal (one symbol is placed next to the other, rather than as an overstrike or one above the other) they must be entered in the order given (such as is the case for left tack and right tack where `-|` gives `⊣` and `|-` gives `⊢`).

* While the compositions below are (near) universal across keyboards, the precise method of combining symbols is not: Some layouts require you to hold <kbd>Alt</kbd> and the 1st symbol together, followed by the 2nd symbol (for example, <kbd>Alt</kbd>+<kbd>&lt;</kbd> then <kbd>-</kbd> gives `←`) while other require you to type the two symbols, followed by <kbd>Tab</kbd> to combine them.

| Symbol | Function (symbol name / Unicode symbol name) | Compositions |
| --- | --- | --- |
| `←` | Assignment (leftwards arrow) | `<-` |
| `→` | Go to / branch (rightwards arrow) | `->` |
| `↑` | Mix / Take (upwards arrow) | <code>^\|</code> |
| `↓` | Split / Drop (downwards arrow) | <code>v\|</code> |
| `×` | Times (multiplication sign) | `xx` `/\` |
| `÷` | Divide (division sign) | `:-` |
| `○` | White circle (Pi times / Circular / Trigonometric functions) | `OO` |
| `∘` | Beside / Bind / Outer product (jot / ring operator) | `oo` |
| `⍟` | Logarithm (circle star) | `*O` |
| `⌾` | (circle jot) | `oO` |
| `⌽` | Reverse / Rotate (circle stile) | <code>O\|</code> |
| `⍉` | Transpose / Reorder axes (circle backslash) | `O\` |
| `⊖` | Reverse-first / Rotate-first (circle bar / circled minus) | `O-` |
| `⍥` | Depth / Over operator (circle diaeresis) | `O:` `O"` |
| `⍤` | Atop / Rank operator (jot diaeresis) | `o:` `o"` |
| `¨` | Each operator (diaeresis) | `::` `""` |
| `⍨` | Constant / Swap / Selfie operator (tilde diaeresis) | `~:` `~"` |
| `⍣` | Power operator (star diaeresis) | `*:` `*"` |
| `⌹` | Matrix divide / inverse (Quad divide / domino) | `-[`&emsp;`-]` |
| `⌈` | Round up / Maximum (left ceiling / up stile) | `FF` `77` |
| `⌊` | Round down / Minimum (left floor / down stile) | `ll` `LL` |
| `⊥` | Decode / base (up tack) | <code>_\|</code> |
| `⊤` | Encode (down tack) | `TT` |
| `⊣` | Same / Left (left tack) | <code>-\|</code> |
| `⊢` | Same / Right (right tack) | <code>\|-</code> |
| `≠` | Not equal to | `=/` `L-` |
| `≤` | Less than or equal to | `<=` `<_` |
| `≥` | Greater than or equal to | `>=` `>_` |
| `≡` | Depth / Match (identical to) | `==` `=_` |
| `≢` | Tally / Not match (not identical to) | `7=` `Z-` |
| `∨` | Greatest common divisor / Logical OR | `vv` |
| `∧` | Lowest common multiple / Logical AND | `^^` |
| `⍲` | Logical NAND (up caret tilde) | `~^` |
| `⍱` | Logical NOR (down caret tilde) | `~v` |
| `⊂` | Enclose / Partitioned enclose (left shoe / subset of) | `((` `cc` |
| `⊆` | Nest / Partition (left shoe underbar / subset of or equal to) | `(_` `c_` |
| `⊃` | First / Pick (right shoe / superset of) | `))` |
| `⊇` | (right shoe underbar / superset of or equal to) | `)_` |
| `∪` | Unique / Union | `uu` `UU` |
| `∩` | Intersection | `nn` |
| `⌷` | Index (squad / squish quad) | <code>[\|</code> <code>]\|</code> |
| `⍋` | Grade up (delta stile) | <code>A\|</code> |
| `⍒` | Grade down (del stile) | <code>V\|</code> |
| `⍳` | Index generator / Index-of (iota) | `ii` |
| `⍸` | Where / Interval-index (iota underbar) | `i_` |
| `∊` | Enlist / Membership (epsilon / small element of) | `ee` |
| `⍷` | Find (epsilon underbar) | `e_` |
| `⍺` | Left dfn argument / dop operand (alpha) | `aa` |
| `⍶` | Alpha underbar | `a_` |
| `⍵` | Right dfn argument / dop operand (omega) | `ww` |
| `⍹` | Omega underbar | `w_` |
| `⍴` | Shape / Reshape (rho) | `rr` `pp` |
| `⌿` | Replicate-first / Compress-first / Reduce-first (slash bar) | `/-` |
| `⍀` | Expand-first / Scan-first (backslash bar) | `\-` |
| `⍪` | Table / Catenate-first (comma bar) | `,-` |
| `¯` | Negative literal / (high minus / macron) | `--` |
| `⎕` | System (quad) | `[]` |
| `⍠` | Variant operator (quad colon) | `[:` `:]` |
| `⌸` | Key operator (quad equal) | `[=` `=]` |
| `⌺` | Stencil / Moving window operator (quad diamond) | `[<` `>]` |
| `⍃` | (quad less-than) | `<]` |
| `⍄` | (quad greater-than) | `[>` |
| `⌶` | Experimental features / I-Beam | `II` `T_` |
| `⍎` | Execute (hydrant / down tack jot) | `o_` |
| `⍕` | Format (up tack jot) | `oT` `o-` |
| `⋄` | Statement separator (diamond operator) | `<>` `^v` |
| `⍝` | Comment (lamp / up shoe jot) | `on` |
| `∇` | Dfn recurse / Tradfn define (nabla) | `VV` `v-` |
| `⍢` | Under operator (del diaeresis) | `V:` `V"` |
| `⍫` | (del tilde) | `V~` |
| `⍙` | (delta underbar) | `A_` |
| `⍬` | Empty numeric vector (zilde) | `0~` |
| `∥` | Parallel operator (parallel to) | <code>\|\|</code> |
| `¤` | Isolate (currency sign) | `ox` |
