::  Additional lib project compilation file. Feel free to look around
::  This file is intended to use on windows, any result on GNU/Linux is not guaranteed,
::  but looking from clues, you can probably assemble similar script yourself.

::  Compiler path (User editable)
path=C:\devkitPro\devkitARM\bin
::      ^- Change this path to wherever your dekitARM is located. In my case it's this.

::  Additional lib compilation
arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c color.c
arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c prof.c
arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c matrizalturas.c
arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c matrizx.c
::  They are one time compilations, so compile them when you update any of the files above.
