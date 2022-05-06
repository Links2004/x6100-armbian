
![overview](overview.png | width=100%)

![SoC](SoC_pinout.png | width=100%)

# I2C0 bus
SoC Module Pins: 039 (PH2), 040(PH3)
goes to DSP board via PIN 10+11

devices:
- ?

# I2C1 bus
SoC Module Pins: 041 (PH4), 042(PH5)

devices:
- PCF8583 @ 0x51

# I2C2 bus
SoC Module Pins:

devices:
- ?


# SoC Board to DSP Board

Pin 1 by SD card

| Pin | Name | Conection |
| 01  | VDD for PCF8583 (RTC) | via Diodes from the yellow 3V3 battery |
| 02  | Red LED | via Diodes and MOS |
| 03  | Green LED | via Diodes and MOS |
| 04  | ? PCM DOUT ? | SoC 051 |
| 05  | ? PCM CLK ? | SoC 050 |
| 06  | USB dev Serial 1 | CH342F CTS1 |
| 07  | USB dev Serial 1 | CH342F RTS1 |
| 08  | USB dev Serial 1 TX | CH342F TXD1 via MUX 2B1 |
| 09  | USB dev Serial 1 RX | CH342F RXD1 via MUX 1B1 |
| 10  | I2C0 SCK | SoC 040 |
| 11  | I2C0 SDA | SoC 039 |
| 12  | ? | SoC 035 |
| 13  | ? | SoC 034 |
| 14  | +5.5V (if powerd on) | |
| 15  | +5.5V (if powerd on) | |
| 16  | +5.5V (if powerd on) | |
| 17  | +5.5V (if powerd on) | |
| 18  | Power ON | SoC 093 via Diode and Power Button |
| 19  | GND | |
| 20  | GND | |
| 21  | AGND | |
| 22  | AGND | |
| 23  |
| 24  |
| 25  |
| 26  |
| 27  |
| 28  |
| 29  |
| 30  |
| 31  |
| 32  | ? Audio Out ? | MIC1P? Soc 013 |
| 33  | Audio Out | CM108B MICIN Pin 27 |
| 34  |
| 35  |
| 36  | ? Audio In ? | HPL? Soc 014 |
| 37  | Audio In | CM108B Line Out L Pin 30 |
| 38  |
| 39  | Onboard MIC ||
| 40  | Onboard MIC ||


# SoC Board

|No.|Signal Name|Function|GPIO|
|-----|-----|-----|-----|
|001|GND|—|
|002|LRADC0|||
|003|RESET-N|||
|004|AP-CK32KO|OSC||
|005|GND|—||
|006|PHOUTN|AUDIO||
|007|PHOUTP| ||
|008|PHINP| ||
|009|PHINN| ||
|010|MIC2N| ||
|011|MIC2P| ||
|012|MIC1N| ||
|013|MIC1P| ||
|014|HPL| to DSP (PIN 36) ||
|015|HPR| ||
|016|MIC-MBIAS| |
|017|MIC-HBIAS| |
|018|AGND| |
|019|VRP|Reference 3.0V||
|020|VRA2|Reference 1.5V||
|021|VRA1|Reference 1.5V||
|022|HPCOMFB| ||
|023|HPCOM| ||
|024|GND|—|
|025|AP-UART2-RX| USB dev Serail / 3pin header by SDcard | PB0 |
|026|AP-UART2-TX| USB dev Serail / 3pin header by SDcard | PB1 |
|027|AP-UART2-CTS|| PB2 |
|028|AP-UART2-RTS|| PB3 |
|029|TP-INT| |
|030|LS-INT| |
|031|GS-INT| |
|032|T-CARD-DET| |
|033|GND|—|
|034|LCD-RST | to DSP (PIN 13) |
|035|LCD-BL-EN | to DSP (PIN 12) |
|036|LCD-PWM| |
|037|PA-SHDN| Red LED - via Diodes and MOS ||
|038|TP-RST| Green LED - via Diodes and MOS ||
|039|TP-SCK| I2C SCK to DSP PIN 10 | PH2 |
|040|TP-SDA| I2C SDA to DSP PIN 11 | PH3 |
|041|SENSOR-SCK| I2C SCK PCF8583 | PH4 |
|042|SENSOR-SDA| I2C SDA PCF8583 | PH5 |
|043|GND|—|
|044|AP-WAKE-BB||
|045|AP-UART1-RX| | PG6 |
|046|AP-UART1-TX| | PG7 |
|047|AP-UART1-RTS| | PG8 |
|048|AP-UART1-CTS| | PG9 |
|049|GND| |
|050|PCM1_CLK| to DSP (PIN 04) | PG11 |
|051|PCM1_DOUT| to DSP (PIN 05) | PG12 |
|052|PCM1_DIN| | PG13 |
|053|WL-SDIO-CLK| |
|054|WL-SDIO-CMD| |
|055|WL-SDIO-D0| |
|056|WL-SDIO-D1| |
|057|WL-SDIO-D2| |
|058|WL-SDIO-D3| |
|059|GND|—|
|060|ND-WE||
|061|ND-ALE| |
|062|ND-CLE| |
|063|ND-RB1| |
|064|ND-CE0| |
|065|ND-CE1| |
|066|GND|—|
|067|SDC0-D1| SDCARD | PF0 |
|068|SDC0-D0| SDCARD | PF1 |
|069|SDC0-CLK| SDCARD | PF2 |
|070|SDC0-CMD| SDCARD | PF3 |
|071|SDC0-D3| SDCARD | PF4 |
|072|SDC0-D2| SDCARD | PF5 |
|073|GND|—|
|074|CSI-VSYNC| SDCARD detect | PE3 |
|075|CSI-HSYNC| | PE2 |
|076|CSI-MCLK| | PE1 |
|077|CSI-PCLK| | PE0 |
|078|CSI-D0| | PE4 |
|079|CSI-D1| | PE5 |
|080|CSI-D2| | PE6 |
|081|CSI-D3| | PE7 |
|082|CSI-D4| | PE8 |
|083|CSI-D5| | PE9 |
|084|CSI-D6| | PE10 |
|085|CSI-D7| Keypad | PE11 |
|086|CSI-STBY-F| Keypad | PE17 |
|087|CSI-RST-F| Keypad | PE16 |
|088|CSI-STBY-R| LED Backlight | 143 |
|089|CSI-RST-R| |
|090|CSI-SCK| Keypad | PE12 |
|091|CSI-SDA| Keypad | PE13 |
|092|GND|—|
|093|POWER_ON | to DSP (PIN 18) via Diode an Power Button  |
|094|USB-DRVVBUS| |
|095|CHGLED| |
|096|TS| |
|097|DOVDD-CSI|POWER|
|098|VCC-3V0| |
|099|DVDD1V8-CSI| |
|100|VCC-LCD| |
|101|VCC-CTP| |
|102|VCC-USB| |
|103|AVCC| |
|104|AVDD-CSI| |
|105|USBVBUS| powered via diodes from DSP +5.5V ||
|106|USBVBUS| powered via diodes from DSP +5.5V ||
|107|USBVBUS| powered via diodes from DSP +5.5V ||
|108|VCC-WIFI| |
|109|VBAT| |
|110|VBAT| |
|111|VBAT| |
|112|GND|—|
|113|DSI-CKN||
|114|DSI-CKP| |
|115|DSI-D0N| |
|116|DSI-D0P| |
|117|DSI-D1N| |
|118|DSI-D1P| |
|119|DSI-D2P| |
|120|DSI-D2N| |
|121|DSI-D3N| |
|122|DSI-D3P| |
|123|GND|—|
|124|LCD-VSYNC|RGB LCD VSYNC|PD27|
|125|LCD-HSYNC|RGB LCD HSYNC|PD26|
|126|GND|—|
|127|LCD-DE|RGB LCD DE|PD25|
|128|LCD-CLK|RGB LCD DCLK|PD24|
|129|GND|—|
|130|LCD-D23|RGB LCD Red|PD23|
|131|LCD-D22|RGB LCD Red|PD22|
|132|LCD-D21|RGB LCD Red|PD21|
|133|LCD-D20|RGB LCD Red|PD20|
|134|LCD-D19|RGB LCD Red|PD19|
|135|LCD-D18|RGB LCD Red|PD18|
|136|LCD-D15|RGB LCD Green|PD15|
|137|LCD-D14|RGB LCD Green|PD14|
|138|LCD-D13|RGB LCD Green|PD13|
|139|LCD-D12|RGB LCD Green|PD12|
|140|LCD-D11|RGB LCD Green|PD11|
|141|LCD-D10|RGB LCD Green|PD10|
|142|LCD-D7|RGB LCD Blue|PD7|
|143|LCD-D6|RGB LCD Blue|PD6|
|144|LCD-D5|RGB LCD Blue|PD5|
|145|LCD-D4|RGB LCD Blue|PD4|
|146|LCD-D3|RGB LCD Blue|PD3|
|147|LCD-D2|RGB LCD Blue|PD2|
|148|GND|—|
|149|AP-WAKE-BT||
|150|WL-RST-N| |
|151|WL-PMU-EN| |
|152|BT-RST-N| |
|153|WL-WAKE-AP| |
|154|BT-WAKE-AP| |
|155|BB-WAKE-AP | ttyS2 TX to MUX 1B2 |
|156|BB-PWREN | ttyS2 RX to NUX 2B2 |
|157|BB-PWR-BAT| |
|158|BB-RST| WIFI/BT Power | 357 |
|159|PMIC-SDA| |
|160|PMIC-SCK| |
|161|GND|—|
|162|USB-DM1| USB Host Port |
|163|USB-DP1| USB Host Port |
|164|USB-DM0| WIFI/BT - USB |
|165|USB-DP0| WIFI/BT - USB |
|166|USB-ID| |
