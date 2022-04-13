# English APL keyboards

These keyboard layouts were designed to facilitate typing Dyalog APL in that they provide easy access to all Dyalog APL symbols and allow the typing of all valid Dyalog APL identifiers. As a sideeffect, they allow the typing most major Western European languages.

You will want to uninstall the Dyalog IME if you've installed it:
* Run the Dyalog APL uninstaller
* Untick "Uninstall the Dyalog interpreter"
* Hit <kbd>Uninstall</kbd>

Get the appropriate version from the [Latest Release](https://github.com/abrudz/Kbd/releases/latest):

## Unified AltGr (Alt+Ctrl) layouts

| Filename       | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| AltGrUK.zip    | This layout uses right-hand Alt as APL [shifting key](https://aplwiki.com/wiki/Typing_glyphs#Shifting_key). The UK layout loses the standard AltGr combos. Instead, acute accented vowels are available with AltGr+Shift+A,Vowel and Euro sign is available with AltGr+Shift+Y,UppercaseE and broken stile is available with AltGr+Shift+R,UnbrokenStile. |
| AltGrUS.zip    | This layout uses right-hand Alt as APL [shifting key](https://aplwiki.com/wiki/Typing_glyphs#Shifting_key) and is a strict superset of the standard US layout. It should therefore not interfere with existing typing habits. |
| AplxStdxUS.zip | APLX's *Standard (classic) APL* layout for US English. See [below](#APLX) for details |

## Backtick prefix layouts

| Filename       | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| BacktickUK.zip | The standard UK layout, but changes the backtick key <kbd>`</kbd> into a dead key which works as [prefix key](https://aplwiki.com/wiki/Typing_glyphs#Prefix_key) for APL symbols. To type a backtick, simply follow the key by a space. |
| BacktickUS.zip | The standard US layout, but changes the backtick key <kbd>`</kbd> into a dead key which works as [prefix key](https://aplwiki.com/wiki/Typing_glyphs#Prefix_key) for APL symbols. To type a backtick, simply follow the key by a space. |

## ASCII symbol composition layouts

| Filename        | Description                                                                                                              |
| --- | --- |
| CompUS.zip      | [ASCII symbol composition](https://aplwiki.com/wiki/Typing_glyphs#ASCII_symbol_composition) layout for American English. |
| CompUSmacOS.zip | [ASCII symbol composition](https://aplwiki.com/wiki/Typing_glyphs#ASCII_symbol_composition) layout for American English. |
| CompUKmacOS.zip | [ASCII symbol composition](https://aplwiki.com/wiki/Typing_glyphs#ASCII_symbol_composition) layout for British English.  |

These are mostly the same as the tab-input compositions found on [TryAPL](https://tryapl.org). See [the list of symbol compositions](comp.md).

## APLX

This layout implements APLX's *Standard (classic) APL* layout for US English. Differences are:

1. It only allows using AltGr (right side Alt) for lowercase etc. APLX does the same by default, but has an option to use (left side) Alt.
1. When installed, it becomes just another national language keyboard, so it will affect all applications, not just APL. However, Windows has an option to set layout per application.
1. There are mappings for symbols used in Dyalog but absent on the original layout:

    | AltGr+Shift+ | Symbol| Notes |
    | ------------ | ----- | ----- |
    |`/`|`⍠`| default Dyalog location|
    |`J`|`⍤`| default Dyalog location|
    |`P`|`⍣`| default Dyalog location|
    |`Z`|`⊆`| default Dyalog location|
    |`6`|`^`| corresponds to normal US-EN location|
    |`Q`|`⌸`| "Quay" for "Key" (K is taken by a duplicated ⌷ for some reason, even though L is available)|
    |`A`|`@`| "At" (2 is taken by ")|
    |`S`|`⌺`| "Stencil" (⋄ is taken by £)|
    |`C`|`⍨`| "Commute" (T is taken by ⍬)|

## Keyboard layout picture utility

The script `kbd.dyalog` is a function to generate pictures of layouts. Usage:
1. `]Load path/kbd`
1. `kbd 'path/altgr.klc'` (optionally a left argument can specify the number of keys; 101 or 102)

## Building

Build using [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=102134), which works fine on Windows 10, despite its documentation. It is safe to ignore the build warnings. Then use the generated executable to install the layout.

**Note:** you may have to enable .NET 2.0 and 3.5 for MSKLC to install and run. Search the web for how to do so.
