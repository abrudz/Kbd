# ASCII character compositions

## Principles
The composition input system is designed to be easy to pick up, while only remembering three simple rules:

*  If an ASCII character is similar to an APL glyph, then double the APL glyph, e.g. `xx` gives `×` and `TT` gives `⊤` and `cc` gives `⊂` and `""` gives `¨` and `ww` gives `⍵`.

* Otherwise, if two ASCII characters combined would approximate an APL glyph, then use those two (generally in any order, but from left to right if the combination is by juxtaposition rather than overlaying), e.g. `:-` gives `÷` and `o"` gives `⍤` and `\O` gives `⍉` and `e_` gives `⍷` and `Z-` gives `≢` and <code>-|</code> gives `⊣` and <code>|-</code> gives `⊢`.

* Otherwise (if it isn't possible to approximate an entire APL glyphusing only two ASCII characters) use two ASCII characters that combine to the left or right half (or slightly more than half) of the APL glyph, e.g. `[:` gives `⍠` and `-]` gives `⌹` and `[<` gives `⌺` and `[>` gives `⍄`.

## Notes
* Not every glyph has a meaning in any or every APL implementation or dialect. Some glyphs have different meanings in different implementations and dialects. The following are listed with their default [Dyalog APL](https://apl.wiki/Dyalog_APL) meanings and some [extensions](https://github.com/abrudz/dyalog-apl-extended).

* Not every APL glyph is included in every keyboard layout. Please [open an issue](https://github.com/abrudz/Kbd/issues/new) to request a glyph's inclusion in an existing layout.

* Some glyphs resemble Greek or Latin characters, but Unicode categorises them as special mathematical or APL variants. Unicode also has some instances of "up" and "down" swapped when it comes to tack glyphs.

* Most compositions are commutative (ASCII characters can be entered in either order), but where the composition is visually horizontal (one character is placed next to the other, rather than as an overstrike or one above the other) they must be entered in the order given (such as is the case for left tack and right tack where `-|` gives `⊣` and `|-` gives `⊢`).

* Some glyphs have multiple recognised compositions.

* While the compositions below are (near) universal across keyboards, the precise method of combining characters into glyphs is not: Some layouts require you to hold <kbd>Alt</kbd> and the first character together, followed by the second character (for example, <kbd>Alt</kbd>+<kbd>&lt;</kbd> then <kbd>-</kbd> gives `←`) while others require you to type the two charcharcters as normal, followed by hitting <kbd>Tab</kbd> to combine them.

## Mappings
| Glyph | Names | Characters |
| --- | --- | --- |
| `←` | Assignment (leftwards arrow) | `<-` |
| `→` | Go to / branch (rightwards arrow) | `->` |
| `↑` | Mix / Take (upwards arrow) | <code>^\|</code> |
| `↓` | Split / Drop (downwards arrow) | <code>v\|</code> |
| `×` | Times (multiplication sign) | `xx`&emsp;`/\` |
| `÷` | Divide (division sign) | `:-` |
| `○` | White circle (Pi times / Circular / Trigonometric functions) | `OO` |
| `∘` | Beside / Bind / Outer product (jot / ring operator) | `oo` |
| `⍟` | Logarithm (circle star) | `*O` |
| `⌾` | (circle jot) | `oO` |
| `⌽` | Reverse / Rotate (circle stile) | <code>O\|</code> |
| `⍉` | Transpose / Reorder axes (circle backslash) | `O\` |
| `⊖` | Reverse-first / Rotate-first (circle bar / circled minus) | `O-` |
| `⍥` | Depth / Over operator (circle diaeresis) | `O:`&emsp;`O"` |
| `⍤` | Atop / Rank operator (jot diaeresis) | `o:`&emsp;`o"` |
| `¨` | Each operator (diaeresis) | `::`&emsp;`""` |
| `⍨` | Constant / Swap / Selfie operator (tilde diaeresis) | `~:`&emsp;`~"` |
| `⍣` | Power operator (star diaeresis) | `*:`&emsp;`*"` |
| `⌹` | Matrix divide / inverse (Quad divide / domino) | `-[`&emsp;`-]` |
| `⌈` | Round up / Maximum (left ceiling / up stile) | `FF`&emsp;`77` |
| `⌊` | Round down / Minimum (left floor / down stile) | `ll`&emsp;`LL` |
| `⊥` | Decode / base (up tack) | <code>_\|</code> |
| `⊤` | Encode (down tack) | `TT` |
| `⊣` | Same / Left (left tack) | <code>-\|</code> |
| `⊢` | Same / Right (right tack) | <code>\|-</code> |
| `≠` | Not equal to | `=/`&emsp;`L-` |
| `≤` | Less than or equal to | `<=`&emsp;`<_` |
| `≥` | Greater than or equal to | `>=`&emsp;`>_` |
| `≡` | Depth / Match (identical to) | `==`&emsp;`=_` |
| `≢` | Tally / Not match (not identical to) | `7=`&emsp;`Z-` |
| `∨` | Greatest common divisor / Logical OR | `vv` |
| `∧` | Lowest common multiple / Logical AND | `^^` |
| `⍲` | Logical NAND (up caret tilde) | `~^` |
| `⍱` | Logical NOR (down caret tilde) | `~v` |
| `⊂` | Enclose / Partitioned enclose (left shoe / subset of) | `((`&emsp;`cc` |
| `⊆` | Nest / Partition (left shoe underbar / subset of or equal to) | `(_`&emsp;`c_` |
| `⊃` | First / Pick (right shoe / superset of) | `))` |
| `⊇` | (right shoe underbar / superset of or equal to) | `)_` |
| `∪` | Unique / Union | `uu`&emsp;`UU` |
| `∩` | Intersection | `nn` |
| `⌷` | Index (squad / squish quad) | <code>[\|</code>&emsp;<code>]\|</code> |
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
| `⍴` | Shape / Reshape (rho) | `rr`&emsp;`pp` |
| `⌿` | Replicate-first / Compress-first / Reduce-first (slash bar) | `/-` |
| `⍀` | Expand-first / Scan-first (backslash bar) | `\-` |
| `⍪` | Table / Catenate-first (comma bar) | `,-` |
| `¯` | Negative literal / (high minus / macron) | `--` |
| `⎕` | System (quad) | `[]` |
| `⍠` | Variant operator (quad colon) | `[:`&emsp;`:]` |
| `⌸` | Key operator (quad equal) | `[=`&emsp;`=]` |
| `⌺` | Stencil / Moving window operator (quad diamond) | `[<`&emsp;`>]` |
| `⍃` | (quad less-than) | `<]` |
| `⍄` | (quad greater-than) | `[>` |
| `⌶` | Experimental features / I-Beam | `II`&emsp;`T_` |
| `⍎` | Execute (hydrant / down tack jot) | `o_` |
| `⍕` | Format (up tack jot) | `oT`&emsp;`o-` |
| `⋄` | Statement separator (diamond operator) | `<>`&emsp;`^v` |
| `⍝` | Comment (lamp / up shoe jot) | `on` |
| `∇` | Dfn recurse / Tradfn define (nabla) | `VV`&emsp;`v-` |
| `⍢` | Under operator (del diaeresis) | `V:`&emsp;`V"` |
| `⍫` | (del tilde) | `V~` |
| `⍙` | (delta underbar) | `A_` |
| `⍬` | Empty numeric vector (zilde) | `0~` |
| `∥` | Parallel operator (parallel to) | <code>\|\|</code> |
| `¤` | Isolate (currency sign) | `ox` |
