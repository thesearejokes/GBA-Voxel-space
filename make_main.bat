::  Project compilation file. Feel free to look around
::  This file is intended to use on windows, any result on GNU/Linux is not guaranteed,
::  but looking from clues, you can probably assemble similar script yourself.

::  Compiler path (User editable)
path=C:\devkitPro\devkitARM\bin
::      ^- Change this path to wherever your dekitARM is located. In my case it's this.

::  Additional lib compilation (moved to make_lib.bat) (ignore this part basically)
REM arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c color.c
REM arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c prof.c
REM arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c matrizalturas.c
REM arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c matrizx.c
::  They are one time compilations, so compile them when you update any of the files above.

::  main.c compilation
arm-none-eabi-gcc -Ofast -mcpu=arm7tdmi -mtune=arm7tdmi -marm -c main.c
::

::  Actually have no idea what it is, but it's turned off.
REM arm-none-eabi-gcc -mcpu=arm7tdmi -mtune=arm7tdmi -marm -mthumb -mthumb-interwork -c main.c
::

::  Linking, compilation and converting.  
arm-none-eabi-gcc -specs=gba.specs main.o color.o prof.o matrizalturas.o matrizx.o -o juanmv94demo.elf
arm-none-eabi-objcopy -O binary juanmv94demo.elf juanmv94demo.gba
::

::  Running testing (user editable)
gbafix juanmv94demo.gba
::  add REM to ignore this line 
