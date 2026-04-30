# Wiring and GPIO Map (Raspberry Pi Pico W)

## Components (derived from `diagram.json`)
- 1x Raspberry Pi Pico / Pico W board (`wokwi-pi-pico`)
- 1x Passive buzzer (`wokwi-buzzer`)
- 8x Pushbuttons (`wokwi-pushbutton`, mapped to keys 1..8)
- Jumper wires

## Electrical behavior
- Buttons are configured as `INPUT_PULLUP` in firmware.
- Each button connects one side to GPIO and the other side to GND.
- Pressing a button drives its GPIO LOW (active-low input).
- Buzzer negative pin goes to GND and positive pin goes to GP8.

## GPIO mapping table

| Function | Musical note | GPIO | Pico pin name | Peripheral |
|---|---|---:|---|---|
| Button 1 (key `1`) | C4 | GP12 | `GP12` | Digital input (pull-up) |
| Button 2 (key `2`) | D4 | GP11 | `GP11` | Digital input (pull-up) |
| Button 3 (key `3`) | E4 | GP10 | `GP10` | Digital input (pull-up) |
| Button 4 (key `4`) | F4 | GP9 | `GP9` | Digital input (pull-up) |
| Button 5 (key `5`) | G4 | GP7 | `GP7` | Digital input (pull-up) |
| Button 6 (key `6`) | A4 | GP6 | `GP6` | Digital input (pull-up) |
| Button 7 (key `7`) | B4 | GP5 | `GP5` | Digital input (pull-up) |
| Button 8 (key `8`) | C5 | GP4 | `GP4` | Digital input (pull-up) |
| Speaker/Buzzer + | current selected note | GP8 | `GP8` | Tone output |
| Common return | — | GND | `GND` | Ground |

## Connection summary
- `GP12..GP9, GP7..GP4` -> one terminal of each button.
- Other terminal of each button -> `GND`.
- `GP8` -> buzzer positive terminal.
- `GND` -> buzzer negative terminal.

## Assumptions
- The provided Wokwi diagram uses `wokwi-pi-pico`. This project targets **Pico W**; GPIO behavior is identical for these pins.
- Buzzer is treated as a passive buzzer compatible with `tone()`.
