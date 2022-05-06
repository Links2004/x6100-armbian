```
root@x6100:~# cat /sys/kernel/debug/pinctrl/*/pinmux-pins
Pinmux settings per pin
Format: pin (name): mux_owner gpio_owner hog?
pin 32 (PB0): 1c28000.serial (GPIO UNCLAIMED) function uart0 group PB0
pin 33 (PB1): 1c28000.serial (GPIO UNCLAIMED) function uart0 group PB1
pin 34 (PB2): rotary@0 1c20800.pinctrl:34 function gpio_in group PB2
pin 35 (PB3): rotary@0 1c20800.pinctrl:35 function gpio_in group PB3
pin 36 (PB4): rotary@1 1c20800.pinctrl:36 function gpio_in group PB4
pin 37 (PB5): rotary@3 1c20800.pinctrl:37 function gpio_in group PB5
pin 38 (PB6): rotary@1 1c20800.pinctrl:38 function gpio_in group PB6
pin 39 (PB7): rotary@3 1c20800.pinctrl:39 function gpio_in group PB7
pin 64 (PC0): (MUX UNCLAIMED) 1c20800.pinctrl:64
pin 65 (PC1): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 66 (PC2): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 67 (PC3): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 68 (PC4): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 69 (PC5): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC5
pin 70 (PC6): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC6
pin 71 (PC7): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 72 (PC8): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC8
pin 73 (PC9): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC9
pin 74 (PC10): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC10
pin 75 (PC11): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC11
pin 76 (PC12): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC12
pin 77 (PC13): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC13
pin 78 (PC14): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC14
pin 79 (PC15): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC15
pin 80 (PC16): 1c11000.mmc (GPIO UNCLAIMED) function mmc2 group PC16
pin 98 (PD2): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD2
pin 99 (PD3): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD3
pin 100 (PD4): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD4
pin 101 (PD5): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD5
pin 102 (PD6): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD6
pin 103 (PD7): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD7
pin 106 (PD10): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD10
pin 107 (PD11): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD11
pin 108 (PD12): 1c0c000.lcd-controller 1c20800.pinctrl:108 function lcd0 group PD12
pin 109 (PD13): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD13
pin 110 (PD14): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD14
pin 111 (PD15): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD15
pin 114 (PD18): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD18
pin 115 (PD19): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD19
pin 116 (PD20): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD20
pin 117 (PD21): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD21
pin 118 (PD22): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD22
pin 119 (PD23): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD23
pin 120 (PD24): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD24
pin 121 (PD25): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD25
pin 122 (PD26): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD26
pin 123 (PD27): 1c0c000.lcd-controller (GPIO UNCLAIMED) function lcd0 group PD27
pin 128 (PE0): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 129 (PE1): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 130 (PE2): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 131 (PE3): (MUX UNCLAIMED) 1c20800.pinctrl:131
pin 132 (PE4): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 133 (PE5): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 134 (PE6): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 135 (PE7): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 136 (PE8): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 137 (PE9): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 138 (PE10): (MUX UNCLAIMED) 1c20800.pinctrl:138
pin 139 (PE11): (MUX UNCLAIMED) 1c20800.pinctrl:139
pin 140 (PE12): (MUX UNCLAIMED) 1c20800.pinctrl:140
pin 141 (PE13): (MUX UNCLAIMED) 1c20800.pinctrl:141
pin 142 (PE14): (MUX UNCLAIMED) 1c20800.pinctrl:142
pin 143 (PE15): (MUX UNCLAIMED) 1c20800.pinctrl:143
pin 144 (PE16): (MUX UNCLAIMED) 1c20800.pinctrl:144
pin 145 (PE17): (MUX UNCLAIMED) 1c20800.pinctrl:145
pin 160 (PF0): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF0
pin 161 (PF1): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF1
pin 162 (PF2): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF2
pin 163 (PF3): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF3
pin 164 (PF4): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF4
pin 165 (PF5): 1c0f000.mmc (GPIO UNCLAIMED) function mmc0 group PF5
pin 192 (PG0): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG0
pin 193 (PG1): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG1
pin 194 (PG2): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG2
pin 195 (PG3): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG3
pin 196 (PG4): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG4
pin 197 (PG5): 1c10000.mmc (GPIO UNCLAIMED) function mmc1 group PG5
pin 198 (PG6): (MUX UNCLAIMED) 1c20800.pinctrl:198
pin 199 (PG7): (MUX UNCLAIMED) 1c20800.pinctrl:199
pin 200 (PG8): (MUX UNCLAIMED) 1c20800.pinctrl:200
pin 201 (PG9): (MUX UNCLAIMED) 1c20800.pinctrl:201
pin 202 (PG10): (MUX UNCLAIMED) 1c20800.pinctrl:202
pin 203 (PG11): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 204 (PG12): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 205 (PG13): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 224 (PH0): 1c21400.pwm (GPIO UNCLAIMED) function pwm0 group PH0
pin 225 (PH1): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 226 (PH2): 1c2ac00.i2c (GPIO UNCLAIMED) function i2c0 group PH2
pin 227 (PH3): 1c2ac00.i2c (GPIO UNCLAIMED) function i2c0 group PH3
pin 228 (PH4): 1c2b000.i2c (GPIO UNCLAIMED) function i2c1 group PH4
pin 229 (PH5): 1c2b000.i2c (GPIO UNCLAIMED) function i2c1 group PH5
pin 230 (PH6): 1c28c00.serial (GPIO UNCLAIMED) function uart3 group PH6
pin 231 (PH7): 1c28c00.serial (GPIO UNCLAIMED) function uart3 group PH7
pin 232 (PH8): 1c19400.phy 1c20800.pinctrl:232 function gpio_in group PH8
pin 233 (PH9): (MUX UNCLAIMED) (GPIO UNCLAIMED)
Pinmux settings per pin
Format: pin (name): mux_owner gpio_owner hog?
pin 352 (PL0): 1f03400.rsb (GPIO UNCLAIMED) function s_rsb group PL0
pin 353 (PL1): 1f03400.rsb (GPIO UNCLAIMED) function s_rsb group PL1
pin 354 (PL2): 1f02800.serial (GPIO UNCLAIMED) function s_uart group PL2
pin 355 (PL3): 1f02800.serial (GPIO UNCLAIMED) function s_uart group PL3
pin 356 (PL4): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 357 (PL5): (MUX UNCLAIMED) 1f02c00.pinctrl:357
pin 358 (PL6): (MUX UNCLAIMED) 1f02c00.pinctrl:358
pin 359 (PL7): (MUX UNCLAIMED) 1f02c00.pinctrl:359
pin 360 (PL8): (MUX UNCLAIMED) 1f02c00.pinctrl:360
pin 361 (PL9): (MUX UNCLAIMED) 1f02c00.pinctrl:361
pin 362 (PL10): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 363 (PL11): (MUX UNCLAIMED) 1f02c00.pinctrl:363
```

```
root@x6100:~# cat /sys/kernel/debug/pinctrl/*/pinmux-functions
function: gpio_in, groups = [ PB0 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PC0 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PC13 PC14 PC15 PC16 PD2 PD3 PD4 PD5 PD6 PD7 PD10 PD11 PD12 PD13 PD14 PD15 PD18 PD19 PD20 PD21 PD22 PD23 PD24 PD25 PD26 PD27 PE0 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PE13 PE14 PE15 PE16 PE17 PF0 PF1 PF2 PF3 PF4 PF5 PG0 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PG13 PH0 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 ]
function: gpio_out, groups = [ PB0 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PC0 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PC13 PC14 PC15 PC16 PD2 PD3 PD4 PD5 PD6 PD7 PD10 PD11 PD12 PD13 PD14 PD15 PD18 PD19 PD20 PD21 PD22 PD23 PD24 PD25 PD26 PD27 PE0 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PE13 PE14 PE15 PE16 PE17 PF0 PF1 PF2 PF3 PF4 PF5 PG0 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PG13 PH0 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 ]
function: uart2, groups = [ PB0 PB1 PB2 PB3 ]
function: uart0, groups = [ PB0 PB1 PF2 PF4 ]
function: irq, groups = [ PB0 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PG0 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PG13 ]
function: i2s0, groups = [ PB4 PB5 PB6 PB7 ]
function: aif2, groups = [ PB4 PB5 PB6 PB7 ]
function: nand0, groups = [ PC0 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PC13 PC14 PC15 PC16 ]
function: spi0, groups = [ PC0 PC1 PC2 PC3 PH6 PH7 PH8 PH9 ]
function: mmc2, groups = [ PC5 PC6 PC8 PC9 PC10 PC11 PC12 PC13 PC14 PC15 PC16 ]
function: lcd0, groups = [ PD2 PD3 PD4 PD5 PD6 PD7 PD10 PD11 PD12 PD13 PD14 PD15 PD18 PD19 PD20 PD21 PD22 PD23 PD24 PD25 PD26 PD27 ]
function: mmc1, groups = [ PD2 PD3 PD4 PD5 PD6 PD7 PG0 PG1 PG2 PG3 PG4 PG5 ]
function: uart1, groups = [ PD10 PD11 PD12 PD13 PG6 PG7 PG8 PG9 ]
function: lvds0, groups = [ PD18 PD19 PD20 PD21 PD22 PD23 PD24 PD25 PD26 PD27 ]
function: csi, groups = [ PE0 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PE13 ]
function: i2c2, groups = [ PE12 PE13 ]
function: mmc0, groups = [ PF0 PF1 PF2 PF3 PF4 PF5 ]
function: jtag, groups = [ PF0 PF1 PF3 PF5 ]
function: i2s1, groups = [ PG10 PG11 PG12 PG13 ]
function: pwm0, groups = [ PH0 ]
function: pwm1, groups = [ PH1 ]
function: i2c0, groups = [ PH2 PH3 ]
function: i2c1, groups = [ PH4 PH5 ]
function: uart3, groups = [ PH6 PH7 PH8 PH9 ]


function: gpio_in, groups = [ PL0 PL1 PL2 PL3 PL4 PL5 PL6 PL7 PL8 PL9 PL10 PL11 ]
function: gpio_out, groups = [ PL0 PL1 PL2 PL3 PL4 PL5 PL6 PL7 PL8 PL9 PL10 PL11 ]
function: s_rsb, groups = [ PL0 PL1 ]
function: s_i2c, groups = [ PL0 PL1 ]
function: irq, groups = [ PL0 PL1 PL2 PL3 PL4 PL5 PL6 PL7 PL8 PL9 PL10 PL11 ]
function: s_uart, groups = [ PL2 PL3 ]
function: s_jtag, groups = [ PL4 PL5 PL6 PL7 ]
function: s_twi, groups = [ PL8 PL9 ]
function: s_pwm, groups = [ PL10 ]
```

```
root@x6100:~# gpiodetect
gpiochip0 [1c20800.pinctrl] (256 lines)
gpiochip1 [1f02c00.pinctrl] (32 lines)
```

```
root@x6100:~# gpioinfo
gpiochip0 - 256 lines:
        line   0:      unnamed       unused   input  active-high
        line   1:      unnamed       unused   input  active-high
        line   2:      unnamed       unused   input  active-high
        line   3:      unnamed       unused   input  active-high
        line   4:      unnamed       unused   input  active-high
        line   5:      unnamed       unused   input  active-high
        line   6:      unnamed       unused   input  active-high
        line   7:      unnamed       unused   input  active-high
        line   8:      unnamed       unused   input  active-high
        line   9:      unnamed       unused   input  active-high
        line  10:      unnamed       unused   input  active-high
        line  11:      unnamed       unused   input  active-high
        line  12:      unnamed       unused   input  active-high
        line  13:      unnamed       unused   input  active-high
        line  14:      unnamed       unused   input  active-high
        line  15:      unnamed       unused   input  active-high
        line  16:      unnamed       unused   input  active-high
        line  17:      unnamed       unused   input  active-high
        line  18:      unnamed       unused   input  active-high
        line  19:      unnamed       unused   input  active-high
        line  20:      unnamed       unused   input  active-high
        line  21:      unnamed       unused   input  active-high
        line  22:      unnamed       unused   input  active-high
        line  23:      unnamed       unused   input  active-high
        line  24:      unnamed       unused   input  active-high
        line  25:      unnamed       unused   input  active-high
        line  26:      unnamed       unused   input  active-high
        line  27:      unnamed       unused   input  active-high
        line  28:      unnamed       unused   input  active-high
        line  29:      unnamed       unused   input  active-high
        line  30:      unnamed       unused   input  active-high
        line  31:      unnamed       unused   input  active-high
        line  32:      unnamed       unused   input  active-high
        line  33:      unnamed       unused   input  active-high
        line  34:      unnamed   "rotary@0"   input   active-low [used]
        line  35:      unnamed   "rotary@0"   input   active-low [used]
        line  36:      unnamed   "rotary@1"   input   active-low [used]
        line  37:      unnamed   "rotary@3"   input   active-low [used]
        line  38:      unnamed   "rotary@1"   input   active-low [used]
        line  39:      unnamed   "rotary@3"   input   active-low [used]
        line  40:      unnamed       unused   input  active-high
        line  41:      unnamed       unused   input  active-high
        line  42:      unnamed       unused   input  active-high
        line  43:      unnamed       unused   input  active-high
        line  44:      unnamed       unused   input  active-high
        line  45:      unnamed       unused   input  active-high
        line  46:      unnamed       unused   input  active-high
        line  47:      unnamed       unused   input  active-high
        line  48:      unnamed       unused   input  active-high
        line  49:      unnamed       unused   input  active-high
        line  50:      unnamed       unused   input  active-high
        line  51:      unnamed       unused   input  active-high
        line  52:      unnamed       unused   input  active-high
        line  53:      unnamed       unused   input  active-high
        line  54:      unnamed       unused   input  active-high
        line  55:      unnamed       unused   input  active-high
        line  56:      unnamed       unused   input  active-high
        line  57:      unnamed       unused   input  active-high
        line  58:      unnamed       unused   input  active-high
        line  59:      unnamed       unused   input  active-high
        line  60:      unnamed       unused   input  active-high
        line  61:      unnamed       unused   input  active-high
        line  62:      unnamed       unused   input  active-high
        line  63:      unnamed       unused   input  active-high
        line  64:      unnamed      "reset"  output   active-low [used]
        line  65:      unnamed       unused   input  active-high
        line  66:      unnamed       unused   input  active-high
        line  67:      unnamed       unused   input  active-high
        line  68:      unnamed       unused   input  active-high
        line  69:      unnamed       unused   input  active-high
        line  70:      unnamed       unused   input  active-high
        line  71:      unnamed       unused   input  active-high
        line  72:      unnamed       unused   input  active-high
        line  73:      unnamed       unused   input  active-high
        line  74:      unnamed       unused   input  active-high
        line  75:      unnamed       unused   input  active-high
        line  76:      unnamed       unused   input  active-high
        line  77:      unnamed       unused   input  active-high
        line  78:      unnamed       unused   input  active-high
        line  79:      unnamed       unused   input  active-high
        line  80:      unnamed       unused   input  active-high
        line  81:      unnamed       unused   input  active-high
        line  82:      unnamed       unused   input  active-high
        line  83:      unnamed       unused   input  active-high
        line  84:      unnamed       unused   input  active-high
        line  85:      unnamed       unused   input  active-high
        line  86:      unnamed       unused   input  active-high
        line  87:      unnamed       unused   input  active-high
        line  88:      unnamed       unused   input  active-high
        line  89:      unnamed       unused   input  active-high
        line  90:      unnamed       unused   input  active-high
        line  91:      unnamed       unused   input  active-high
        line  92:      unnamed       unused   input  active-high
        line  93:      unnamed       unused   input  active-high
        line  94:      unnamed       unused   input  active-high
        line  95:      unnamed       unused   input  active-high
        line  96:      unnamed       unused   input  active-high
        line  97:      unnamed       unused   input  active-high
        line  98:      unnamed       unused   input  active-high
        line  99:      unnamed       unused   input  active-high
        line 100:      unnamed       unused   input  active-high
        line 101:      unnamed       unused   input  active-high
        line 102:      unnamed       unused   input  active-high
        line 103:      unnamed       unused   input  active-high
        line 104:      unnamed       unused   input  active-high
        line 105:      unnamed       unused   input  active-high
        line 106:      unnamed       unused   input  active-high
        line 107:      unnamed       unused   input  active-high
        line 108:      unnamed  "usb1_vbus"  output  active-high [used]
        line 109:      unnamed       unused   input  active-high
        line 110:      unnamed       unused   input  active-high
        line 111:      unnamed       unused   input  active-high
        line 112:      unnamed       unused   input  active-high
        line 113:      unnamed       unused   input  active-high
        line 114:      unnamed       unused   input  active-high
        line 115:      unnamed       unused   input  active-high
        line 116:      unnamed       unused   input  active-high
        line 117:      unnamed       unused   input  active-high
        line 118:      unnamed       unused   input  active-high
        line 119:      unnamed       unused   input  active-high
        line 120:      unnamed       unused   input  active-high
        line 121:      unnamed       unused   input  active-high
        line 122:      unnamed       unused   input  active-high
        line 123:      unnamed       unused   input  active-high
        line 124:      unnamed       unused   input  active-high
        line 125:      unnamed       unused   input  active-high
        line 126:      unnamed       unused   input  active-high
        line 127:      unnamed       unused   input  active-high
        line 128:      unnamed       unused   input  active-high
        line 129:      unnamed       unused   input  active-high
        line 130:      unnamed       unused   input  active-high
        line 131:      unnamed         "cd"   input   active-low [used]
        line 132:      unnamed       unused   input  active-high
        line 133:      unnamed       unused   input  active-high
        line 134:      unnamed       unused   input  active-high
        line 135:      unnamed       unused   input  active-high
        line 136:      unnamed       unused   input  active-high
        line 137:      unnamed       unused   input  active-high
        line 138:      unnamed      "sysfs"  output  active-high [used]
        line 139:      unnamed "matrix_kbd_col" output active-high [used]
        line 140:      unnamed "matrix_kbd_col" output active-high [used]
        line 141:      unnamed "matrix_kbd_col" output active-high [used]
        line 142:      unnamed "matrix_kbd_col" output active-high [used]
        line 143:      unnamed      "sysfs"  output  active-high [used]
        line 144:      unnamed "matrix_kbd_col" output active-high [used]
        line 145:      unnamed "matrix_kbd_col" output active-high [used]
        line 146:      unnamed       unused   input  active-high
        line 147:      unnamed       unused   input  active-high
        line 148:      unnamed       unused   input  active-high
        line 149:      unnamed       unused   input  active-high
        line 150:      unnamed       unused   input  active-high
        line 151:      unnamed       unused   input  active-high
        line 152:      unnamed       unused   input  active-high
        line 153:      unnamed       unused   input  active-high
        line 154:      unnamed       unused   input  active-high
        line 155:      unnamed       unused   input  active-high
        line 156:      unnamed       unused   input  active-high
        line 157:      unnamed       unused   input  active-high
        line 158:      unnamed       unused   input  active-high
        line 159:      unnamed       unused   input  active-high
        line 160:      unnamed       unused   input  active-high
        line 161:      unnamed       unused   input  active-high
        line 162:      unnamed       unused   input  active-high
        line 163:      unnamed       unused   input  active-high
        line 164:      unnamed       unused   input  active-high
        line 165:      unnamed       unused   input  active-high
        line 166:      unnamed       unused   input  active-high
        line 167:      unnamed       unused   input  active-high
        line 168:      unnamed       unused   input  active-high
        line 169:      unnamed       unused   input  active-high
        line 170:      unnamed       unused   input  active-high
        line 171:      unnamed       unused   input  active-high
        line 172:      unnamed       unused   input  active-high
        line 173:      unnamed       unused   input  active-high
        line 174:      unnamed       unused   input  active-high
        line 175:      unnamed       unused   input  active-high
        line 176:      unnamed       unused   input  active-high
        line 177:      unnamed       unused   input  active-high
        line 178:      unnamed       unused   input  active-high
        line 179:      unnamed       unused   input  active-high
        line 180:      unnamed       unused   input  active-high
        line 181:      unnamed       unused   input  active-high
        line 182:      unnamed       unused   input  active-high
        line 183:      unnamed       unused   input  active-high
        line 184:      unnamed       unused   input  active-high
        line 185:      unnamed       unused   input  active-high
        line 186:      unnamed       unused   input  active-high
        line 187:      unnamed       unused   input  active-high
        line 188:      unnamed       unused   input  active-high
        line 189:      unnamed       unused   input  active-high
        line 190:      unnamed       unused   input  active-high
        line 191:      unnamed       unused   input  active-high
        line 192:      unnamed       unused   input  active-high
        line 193:      unnamed       unused   input  active-high
        line 194:      unnamed       unused   input  active-high
        line 195:      unnamed       unused   input  active-high
        line 196:      unnamed       unused   input  active-high
        line 197:      unnamed       unused   input  active-high
        line 198:      unnamed "matrix_kbd_row" input active-high [used]
        line 199:      unnamed "matrix_kbd_row" input active-high [used]
        line 200:      unnamed "matrix_kbd_row" input active-high [used]
        line 201:      unnamed "matrix_kbd_row" input active-high [used]
        line 202:      unnamed "matrix_kbd_row" input active-high [used]
        line 203:      unnamed       unused   input  active-high
        line 204:      unnamed       unused   input  active-high
        line 205:      unnamed  "interrupt"   input  active-high [used]
        line 206:      unnamed       unused   input  active-high
        line 207:      unnamed       unused   input  active-high
        line 208:      unnamed       unused   input  active-high
        line 209:      unnamed       unused   input  active-high
        line 210:      unnamed       unused   input  active-high
        line 211:      unnamed       unused   input  active-high
        line 212:      unnamed       unused   input  active-high
        line 213:      unnamed       unused   input  active-high
        line 214:      unnamed       unused   input  active-high
        line 215:      unnamed       unused   input  active-high
        line 216:      unnamed       unused   input  active-high
        line 217:      unnamed       unused   input  active-high
        line 218:      unnamed       unused   input  active-high
        line 219:      unnamed       unused   input  active-high
        line 220:      unnamed       unused   input  active-high
        line 221:      unnamed       unused   input  active-high
        line 222:      unnamed       unused   input  active-high
        line 223:      unnamed       unused   input  active-high
        line 224:      unnamed       unused   input  active-high
        line 225:      unnamed       unused   input  active-high
        line 226:      unnamed       unused   input  active-high
        line 227:      unnamed       unused   input  active-high
        line 228:      unnamed       unused   input  active-high
        line 229:      unnamed       unused   input  active-high
        line 230:      unnamed       unused   input  active-high
        line 231:      unnamed       unused   input  active-high
        line 232:      unnamed "usb0_id_det" input active-high [used]
        line 233:      unnamed       unused   input  active-high
        line 234:      unnamed       unused   input  active-high
        line 235:      unnamed       unused   input  active-high
        line 236:      unnamed       unused   input  active-high
        line 237:      unnamed       unused   input  active-high
        line 238:      unnamed       unused   input  active-high
        line 239:      unnamed       unused   input  active-high
        line 240:      unnamed       unused   input  active-high
        line 241:      unnamed       unused   input  active-high
        line 242:      unnamed       unused   input  active-high
        line 243:      unnamed       unused   input  active-high
        line 244:      unnamed       unused   input  active-high
        line 245:      unnamed       unused   input  active-high
        line 246:      unnamed       unused   input  active-high
        line 247:      unnamed       unused   input  active-high
        line 248:      unnamed       unused   input  active-high
        line 249:      unnamed       unused   input  active-high
        line 250:      unnamed       unused   input  active-high
        line 251:      unnamed       unused   input  active-high
        line 252:      unnamed       unused   input  active-high
        line 253:      unnamed       unused   input  active-high
        line 254:      unnamed       unused   input  active-high
        line 255:      unnamed       unused   input  active-high
gpiochip1 - 32 lines:
        line   0:      unnamed       unused   input  active-high
        line   1:      unnamed       unused   input  active-high
        line   2:      unnamed       unused   input  active-high
        line   3:      unnamed       unused   input  active-high
        line   4:      unnamed       unused   input  active-high
        line   5:      unnamed      "sysfs"  output  active-high [used]
        line   6:      unnamed     "enable"  output  active-high [used]
        line   7:      unnamed   "spi0 CS0"  output   active-low [used]
        line   8:      unnamed       "mosi"  output  active-high [used]
        line   9:      unnamed        "sck"  output  active-high [used]
        line  10:      unnamed       unused   input  active-high
        line  11:      unnamed      "reset"  output   active-low [used]
        line  12:      unnamed       unused   input  active-high
        line  13:      unnamed       unused   input  active-high
        line  14:      unnamed       unused   input  active-high
        line  15:      unnamed       unused   input  active-high
        line  16:      unnamed       unused   input  active-high
        line  17:      unnamed       unused   input  active-high
        line  18:      unnamed       unused   input  active-high
        line  19:      unnamed       unused   input  active-high
        line  20:      unnamed       unused   input  active-high
        line  21:      unnamed       unused   input  active-high
        line  22:      unnamed       unused   input  active-high
        line  23:      unnamed       unused   input  active-high
        line  24:      unnamed       unused   input  active-high
        line  25:      unnamed       unused   input  active-high
        line  26:      unnamed       unused   input  active-high
        line  27:      unnamed       unused   input  active-high
        line  28:      unnamed       unused   input  active-high
        line  29:      unnamed       unused   input  active-high
        line  30:      unnamed       unused   input  active-high
        line  31:      unnamed       unused   input  active-high
```
