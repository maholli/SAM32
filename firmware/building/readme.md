## If you want to build yourself

### Circuitpython

Tweaking firmware for the SAM32 will likely only require building circuitpython. The general procedure for that is found in the [https://github.com/adafruit/circuitpython/tree/master/ports/atmel-samd](https://github.com/adafruit/circuitpython/tree/master/ports/atmel-samd) readme. Just copy the contents of [circuitpython/sam32](circuitpython/sam32) to your cloned copy of `\circuitpython_fork\ports\atmel-samd\boards`, then run

```
make BOARD=sam32
```

from a terminal in the `/circuitpython_fork/ports/atmel-samd/`directory.

### UF2 bootloader

If, for whatever reason, you want to build the bootloader as well... It's nominally the same as building Circuitpython, but instead clone: [https://github.com/adafruit/uf2-samdx1](https://github.com/adafruit/uf2-samdx1) and place [uf2-bootloader/sam32](uf2-bootloader/sam32) in the `uf2-samdx1/boards/` directory, then run

```
make BOARD=sam32
```

from a terminal in the `/uf2-samdx1/` directory.

