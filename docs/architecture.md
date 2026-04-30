# Firmware Architecture

## Overview
The firmware is a single-loop, event-polling mini piano:
1. Initialize 8 button GPIOs as pull-up inputs.
2. Repeatedly scan all buttons.
3. If any button is pressed, select the mapped pitch.
4. Output tone on GP8, or stop tone if no key is pressed.

## Source layout
- `src/main.cpp`: Main firmware logic (`setup()` and `loop()`).
- `include/pitches.h`: Tone constants (Hz) used by button-to-note mapping.
- `docs/wiring.md`: Hardware wiring reference.

## Runtime behavior details
- **Input model**: active-low (`INPUT_PULLUP` + button to GND).
- **Debounce/scan period**: fixed `delay(10)` (~100 Hz polling).
- **Polyphony**: monophonic (single note). If multiple buttons are held, the last checked pressed button in scan order wins.
- **Output**: `tone(GP8, frequency)` when pressed, `noTone(GP8)` when idle.

## Non-functional constraints
- Core logic intentionally preserved from original design.
- No Wi-Fi usage in this firmware.
