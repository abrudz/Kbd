# Unified AltGr (Alt+Ctrl) APL keyboard
Build using [MSKLC](https://msdn.microsoft.com/en-us/globalization/keyboardlayouts.aspx), which works fine on Windows 10, despite its documentation. It is safe to ignore the build warnings.

## Keyboard layout picture utility

The script `kbd.dyalog` is a function to generate pictures of layouts. Usage:
1. `]Load path/kbd`
1. `kbd 'path/altgr.klc'` (optionally a left argument can specify the number of keys; 101 or 102)

## Version 15.0 compatibility

To run on Dyalog APL version 15.0, execute the folowing before running `kbd`:
1. `]Load path/make15`
1. `make15`

## UK layout
As opposed to the US layout, the UK one loses the standard AltGr combos. Acute accented vowels are available with AltGr+Shift+A,Vowel and Euro sign is available with AltGr+Shift+Y,UppercaseE and broken stile is available with AltGr+Shift+R,UnbrokenStile.
