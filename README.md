# English Unified AltGr (Alt+Ctrl) APL keyboards

These keyboard layouts were designed to facilitate typing Dyalog APL in that they provide easy access to all Dyalog APL symbols and allow the typing of all valid Dyalog APL identifiers. As a sideeffect, they allow the typing most major Western European languages.

Build using [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=102134), which works fine on Windows 10, despite its documentation. It is safe to ignore the build warnings. Then use the generated executable to install the layout.

**Note:** you may have to enable .NET 2.0 and 3.5 for MSKLC to install and run. Search the web for how to do so.

## US layout (altgr.klc)

This layout is a strict superset of the standard US layout and should therefore not interfere with existing typing habits.

## UK layout (altgruk.klc)
The UK layout loses the standard AltGr combos. Instead, acute accented vowels are available with AltGr+Shift+A,Vowel and Euro sign is available with AltGr+Shift+Y,UppercaseE and broken stile is available with AltGr+Shift+R,UnbrokenStile.

## APLX layout (aplxstdx.klc)

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
    |`Q`|`⌸`| "Qey" (K is taken by a duplicated ⌷ for some reason, even though L is available)|
    |`A`|`@`| "At" (2 is taken by ")|
    |`S`|`⌺`| "Stencil" (⋄ is taken by £)|
    |`C`|`⍨`| "Commute" (T is taken by ⍬)|

## Keyboard layout picture utility

The script `kbd.dyalog` is a function to generate pictures of layouts. Usage:
1. `]Load path/kbd`
1. `kbd 'path/altgr.klc'` (optionally a left argument can specify the number of keys; 101 or 102)

### Version 15.0 compatibility

To run the picture utility on Dyalog APL version 15.0, execute the following before running `kbd`:
1. `]Load path/make15`
1. `make15`

### [Try it online!](https://tio.run/##5Vx9c@PGef8b9yl2@Ecp9agcAL47ceYgEpRoUaSOIHUnv9QFQVBCRQIMAd6d6nEmPXeuZ/bk2o2dubbJTHJ2ZxTn2kzrc9Km6XhG@Sb8Iu7z7AICAQKgrrUyczVNc4nFs79nn9d9sEudOh5u9E/UoXX49dfHvf784YfvXCP4mp/@jDjqsW4Ta@wYlqkOiTkd9fQJsQbkWD@xyVpfH6jTofMK6VnO0TpRbTLUBw5RJ4fTkW7CF7NPvnM81MjAGOrEmtDWVEc6kk6MwyOf1uc50Z3pxLRJfwAftnMCI4Fbz1InfTJSx@Se4RyRvq726STSMMfeECbZ04fWPR9laIwMR8V526/AsPvEMnWiHakTVXNAhDH8j8OdiXWsZ4hxaFoTALH1MVA4OqmoY7thaccwAbi8xnBBElDPfPbe/INPmltyZ3766Zrw6vz9X2Tmp1@uz2dPoSECY2/B/KjUxoCYlkMOjbu6iWKHBf4dQp4@IxEvBHJVfKFYYtiAZ@psuAmDBV4gAi/OT7@Yzx4AXggApCSaNQVrOCdjd1j2VfMVFOP08/njr9zxZP7ob87PAALtRUeals/VPrLu2dTMni6oq/CkWJifPk@n/U7AfPihCejp@ceP5x//aOH97OW/DL0/TJNvh5jR9n0gkCK5omZT1Y7tsarp8J1q@Y/GLEZWnhTIFTV@wHqy/rGYRcv606D5nwe95GW8DL0/o1r@FogZ48sdted6wFUF1YIvXy0z2cT1PCFufW@/qqBakPVqmb1g3C569rOX8PKScfuyi/nhCqs@wGL0KiKIhU5g3bkqVm6zSlJacl9B/JDlFfaqWC1yfPFIfenWnbh3QqQ@e2nFfH75FVY5MuDRiXyjsbSA6fsx6/ymAzXMKnlt/UbjiJCIaL2aZTXM6sVidXm1ehblKM9WudGLXj67RLJg798nzvkysfr8/5WYceurMxkyD7htmLSVhg7rWPQQVtYu@AtSbU28Ydizq5tTcoHor6pXyGBl1RtowyxZ@UpC1MtfAsUnuWoG0TJ9vGrBTK4dVy5ZL/p@/n/ojCR7QjX7LRDT20PsWOMG7jAeK7j3Qo6rumaM1CE5xv1M3Bb95PxMLJNsmeSzJF@gu5K2pppEs/q6zUDspjXBMTZbsmyIma2J29AuD4iH@Crg6oYgjBb3dl2YvnFoODbSfvBJNVMSyvPHv4GvEkl4IVJPtfWNbMEd7wq2rd/PIVb6jTf76sbgrXdy76YBTEn/SZoOGhhmnwys6WSDDiNH@n13b92@AHB3mh89YcjnZ8J1oUCEwnz22Xz2dGF/mKnMsRCFja4cqRMmSbei0CH/fP5r4bor4ukXufnDjxADxyNrGHuxM84QlJNRzxoCxlp2/ng2f//pOs5l9l4GPDSD8B57dTyeWOOJgXvmfcMeD9UTYtPBrirquEX9joC706dnuNv96Mka3Xr@7fo5XH/5Lnw@ejKfPXAVM7Ed0tMPDdM0zENiadp0opvgG9aA6Kp2hBvmBJIhjHTxqc0ezSjIw2X7UHqb7v4DBA5j4@4dGWD7MQzOwFAU6fwszfN8GSTkeZWHRuT5bNo9BukRs2ePiT6yx2z8XcM2ekM9OF7M0fFiTmCNKLLx2x1CbuAmiLzLRu8b9lRF/brTIGCrtocZkgC33kFk7ybTrudpHZVNYn76Pibl9BpmTHjPPl1fyxIR9@bJTcypeDODJpi9tw4ERQF8QEClPfwxEMENEe@ugbXFP/wW6cDmroOxkxZ2zuKypfFDw4eAxa2pgxT0YAfJkdq9xiBQtuu1jtKROjIopSEdtLod@LIjHzSlXeyqylIVrhb66iaetTDpdQ0PcYg2dTaswYCMLcO8iLO@6qjopBcQQe@aPQAvX3dnBIKi817M6yOPw4WALis8otHBBwfWhJ48EaT3sgTDst3gPP38xhqzwKMnzKSEeQJc0xwAs8A5LkRr6NgqKAjTJcyUnjR9BGbwJv945ik4Jg/hRCkrT2G62QdJHHR07Ui/Cw/63p2BNRxa9@wFzo@/Qouz3IexRN1kYerJL3ZoN7Lu6pCXR3i2ZdOTv95QNY/J0DA97Y1UZ2LcZ3wqyv789OdphR24WRPwXJauypBqwI/fdNbfdDBpttNvCmmwI53MAqv@dDw0NPRA0CRjCFC256E@L@@caw3FfPSE3QDDCIR/FVix6ze@K7xVt/0VCRlRNo41ZqdgNAQsMphY3tndahaw5CyzYGsd8VnQgwfE7qnacXD6nmF@GIRw18k1LIxwrUy/0bwhvZVeX9QPPaGlxqf@jGeQmElMl8HEukfTxn8EkMFpz88QdS2XxXwglq9D5haE9bVSAa9zWXrNM07OkcsG5j6x6EFpUDGw6sxnP7mJvGZPWe9KR6I4eNLoWCMERgOAcQN6yWBaISy3wvpz1@h7WlRtMlCHwwVNskX@wrl/ST3bz18QbF7UXWQE/b6DiyGVjw1Pe8HDMDVrOB2ZCEr1AbmSkUUJhCAmK1HYMFyO3G@5ABxKBVCQymNURVdIV7oLsAGbIl3kRobj6J6qoMYwNN2@w8yMxfSjWVooMq25N3FNhDVb04@sYR@qD8gNE0Krpus0othXWktdD6AeBFD5wmpUVweI6uIFAAHPm/ANcLRM@iYk89n5meeero7ecM15@gWr9zILhd5bb/k5lhpYZ7k2wCfjMzq4JCNWYLqcgMliLp@asZyu08zwAMvO/93rIkHQny4wc9MfTXiezSoBjAWQYfbp@Zmn/xfhgOA3qYVofeWtUAEWqDRWEp6fZV7cIuCyLJYYGmW2rLYX4xVhlFheUUbylecu3N6Ay2vOnvZsx3CmEHz0NykarAwTa0jGhuZA1Wpfi3O8OxnPA70aGhZrOmvI3apBK1@X4lqo7sDq7syd6k0vdGZPIQ6Zu6jHuq8Cb36sqAEWLqflKoS8@zX7cUs6fQ2@ZJjrpnc2q1yDZkde4FJV1TTsI7JBKlMbknMqQBq4qLT2Dtr1re0Ol1rT1onIC0VSsUZj1TxJHLW7JzUPuNRq0karIjVkrBW5FDxhVXdW0tarXIrHV44vJBDvy22l3mpywnf4eKKFgjaWhudu3Ki4WT5wQ/Bv5MkrkGEHTuC@6N8vwH32wu2eAFXBpyoGqDC5JuiCVt8c9114hqarHElD7khjnYgeg84B64h64SHxSDduKBVuf@dtjquoY47nBE7kCiGKjQ1uA14c@4z4SFCfCIgUludFgdugb5CZVOtb9Q5pNeUMke9UGtKu1AF7kV2pvZMh38NfRn3fa4OAWZggAIoIKCIausICZOd2K0NudVudKEBwzV25XalLDSJ1grg5Lou4WcTNMlw1u4i73ZZhss3u7qbcJkp9q@nD7rW6zSrtC2LmuRxi5hArxzDF3AJmrdVtw6S67bbcrByEQKutRkNqR6AWuDyi5hEtj6gir2qLqPV9mOgeyCk3OyFQudtuRUAWuQJCFhCysGQlpX4nQ6RdQFSkZjXZPCWuiEhFRBowkYu9RSx5X4b5KK1GvdpVfKyGXOugJhoHZLMtVXbkkHnKXAlxS4hbYrj5RVwZ05QLsyeBPjvbslIPM1BudeFeNAeVKyOHMnIouxz6CxyadXRWmg6jObBbSSx6gA9v@I/P9l3lLLJ4XW6D88qA0FBChmPgCQrSuJa8@/Zeo6tQfLGHTAYLtsRbLuitrqxcMtz6FJa6Mc/3cjfhs8DfdOfOvE6qdDsyfKK7ZchWW9r3rzxoyMedOuRv0gAtBvMoz93iID/8ABp/sg2I3iZRdqUGDJE7HQi5Wxm3tyLt1TvSYn@CAILA3Ub4e9Akwt@Ogb@dDC9yMsLr0CxGYgQDOYaBvCo6hSzXRh4TaBJFaMdwaCeLkOM6CO9AkwjfiYHvJMPnuQOEP4EmEf4gBv4gGb7AdRF@Ck0ifDcGvpsMX@TqCG9Akwhfj4GvJ8OXuBbCW9Akwrdi4FvJ8GVuD@HH0CTC78XA7yXDqzQ5FDi6vOu4IGn4IfQSWEnkdr2zDfmsuUWkzdZ@XFhE0MkK0MjRU@nRqQgsT6klzFN5HT@FPmYq@MrSrCS3Wdau1NuV7m6tId@5SFb1Zq3VdgsRRYYcL3VabW/h79Qb1VDm0jkJRVehSdSuFCdisnYHnILwNjSJ8EoMvJIIL/JcFeH70CTCV2PgkwsBKPZqCD@AJhG@FgNfS4YXuS2EP4QmEX4rBn4rGT7LbSP8ETSJ8Nsx8NvJ8DnuNYT/C2gS4V@LgX8tGT7P7SD8MTSJ8Dsx8Mk1AVSIDYQfQpMI34iBbyTDF2koZ92sgjWpVlgRYLFJRE5mVaKsiozVAIvLfmlFImZpSem0WztxXEM0SRMo0wnk3fIKU5WKpbOgeVPY7za24CmgBiUfzUvwxES2pQZEhyKzHlbSRecu9oARxZjlS5ExFmm5ri5ILu21cPp72zB/SQGh6soKp9C411GNfwlNogJfj1Ha68nwfe4Owt@HJhH@Tgz8nWR4nasgvAZNInwlBr6SDD/g9hH@LjSJ8Psx8PuJ8Fme20T4HjSJ8Jsx8JvJ8ALXRHgTmkT4Zgx8Mxle5HYRfgQNfazo5eMY7MYw2PUZ7NYrUTV0Nkv9HZ//JebyGj4f9RYEovcwrACi1WitmHSOPW5BYLSqDFBHwMUYqnVh5kqntYf7DisB8xRwt970HuAwGeQXH@C2DyAcmxuUBBTRuk0fppJRy5yyJ1VkN8wXP1xQejsTaiKQ8gVWYPEie3yl6tNZqoJ5uk89sqJsdLYlLylttWUJ7LPYlZSn2jJu28ne5kCQf5arypU6eINvPlFbNp/bZEj8nlTgwj1xpg@3CdtYfIEuRrjpR1Sy8X3yh1@ECbDy1ctIoFOCX4YIikgwUJFgSgl@F0bArQe9jwQGJfiXMAISDCjBCSX47zDCAAmySGBRgi9CBDmUQqNSSJTgr8IEtIinUsiU4P0QQR4J@lSKLiX4xzACTlKjk6xTgtMwAhL0KcEBJfhZGAGl6FMpWpTgxyECke1FIAFBgvPnl7FvgV9tX963788j7Vvy7XsWad@yb9//jLSv5tv3WaT5RN98/x5pPt43348izVfyzfco0nxl33z/EGk@zTff40jriL51/j7KOgX@wjp/fhnjqKXVxsn5xvks0jg93zi/ijSO5hvn95HGGfjG@XVk8A384Psq0noF33q/ibRezrfeX0dar@db728jraf51vtppPUGvvX@LtJ6Bd96P4mynlryY@vsMubL66vNJ/rmexppPtU33@eR5uv55vuvSPPpvvn@NdI6Od86zyOtI/rWeRBpHdW3zizSOj3fOv8UaR3dt84HkdbJ@db5OMo6ef3COn92GeMUk42Di/iALgkm5flvkdbL@tb7NFK1eV@1X4bFQhZ9yqJJCT6K1H3W1/17kYrJ@4r5JEoxRV8xP7zk8u/9Ui1eQQIn21qwS@cu/s44eGPAddRecBNH4@hfZwU7@9zSQSA8fdGj9mD5VuBSbfrPK9B7wfPObJFLNacj8qeh7hIXPjrEKnBpslCqpuhfieEfUIUgelxNCPZoXE0M9vS5WjbYo3O1YAmVHXC1fKAnx3O14OkimL5WDPaIXC24GuSyXK0c7MnBDIPrOYTnnjq1g0LmQIGKNrGGwwgxc64Ci6HuEusuhbrLrLsc6lZZ90aou8e6c6FujXXnQ9191h060Ya4od3XQ90D1i0Eu/M86xZD3QLrzoa6RdbNp8JlNu2u6sPQjRxo8sQmbf0HoRtFMEXQW/Il6Aq6SxEcSAj6SxE8SAg6DARwTQh6TBF8SAi6TAmcSAj6TAm8SAg6TQncSAh6TQn8SAx6TQkcSQzOvpSHruDsSwXoCs6@BGKLuZWJ5W35TieeSHDdgaaIVDhHuKGPqSIVflakw24sJ4S9iQnJQpuYS0nBRYPckArHDQWLiI8CtznR1eNw0GxbIz0cMd3xUrDsqYc66Y6X4gJ/lxn2fjq3sJPLZj/s4FXrnrnk3ZQR3lny8Lpp6xNn6TlSH@qOHvbu7/H80hPvtj4MypWHsKa/K71tmH3rnh3iqHlajr7d56Qx@7GrYZmrXQdX8KSVG56AUotnr6nwugwJYfE0NnwfqrzUxYFI@CYUGamlI5IwEcRrip6LpC79tK1U2vU9fPpXEkTL8WUu9Cul0M9fmltdaYv@cOiSOGtV3Rypk@P1AIXcrO5sVtNf47@bg7@9glv/Aw "APL (Dyalog Unicode) – Try It Online") 
This displays a 102-keys standard Danish layout (exported from MSKLC using **Load Existing Keyboard…** and then **Save Source File As…**). Press <kbd>Ctrl</kbd>+<kbd>Enter</kbd> and then scroll to the bottom of the page (<kbd>Ctrl</kbd>+<kbd>End</kbd>) to see the result.
