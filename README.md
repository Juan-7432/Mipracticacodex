# Raspberry Pi Pico W Mini Piano

A compact RP2040 firmware project that turns a Raspberry Pi Pico W into an 8-key mini piano using pushbuttons and a buzzer.

## Features
- 8-button digital keyboard (keys `1..8` in Wokwi)
- Note mapping from C4 to C5
- Active-low inputs using internal pull-up resistors
- Simple low-latency polling loop (`10 ms`)
- Compatible with Raspberry Pi Pico and Pico W pin behavior

## Repository Structure

```
.
├── CMakeLists.txt
├── README.md
├── include/
│   └── pitches.h
├── src/
│   └── main.cpp
└── docs/
    ├── architecture.md
    └── wiring.md
```

## Hardware Bill of Materials
- Raspberry Pi Pico W (target)
- 8x momentary pushbuttons
- 1x passive buzzer
- Jumper wires
- Breadboard (recommended)

See full wiring details in `docs/wiring.md`.

## Pin Mapping (Quick Reference)
- Buttons: `GP12, GP11, GP10, GP9, GP7, GP6, GP5, GP4`
- Buzzer output: `GP8`
- Ground common: `GND`

## Build/Flash Options

### Option A: Wokwi Simulation (recommended for quick test)
1. Open Wokwi and create a new **Raspberry Pi Pico (Arduino)** project (`arduino-community` env).
2. Paste `src/main.cpp` and `include/pitches.h` content into the simulation project.
3. Recreate wiring based on `docs/wiring.md` (or import your original `diagram.json`).
4. Start simulation and click the canvas to focus.
5. Press keyboard keys `1` to `8` to trigger notes.

### Option B: Real Pico W Hardware (Arduino toolchain)
Use Arduino IDE or `arduino-cli` with a Pico-compatible core supporting `tone()`.

1. Install Arduino IDE.
2. Install an RP2040 board package (e.g., Arduino-Pico core).
3. Create a sketch and copy in `src/main.cpp` content.
4. Add `pitches.h` to the sketch folder.
5. Select board **Raspberry Pi Pico W** and the right serial/UF2 upload path.
6. Upload and test buttons + buzzer wiring.

> Note: `CMakeLists.txt` is included for repository normalization and project metadata. Actual firmware build is expected through Arduino-compatible tooling because this code uses Arduino APIs (`pinMode`, `digitalRead`, `tone`, `noTone`).

## Wi-Fi Notes
This firmware does not use Wi-Fi. No SSID/password or secrets are required.

## Behavior Preservation
Core logic is intentionally preserved: GPIO list, note mapping, active-low scanning, single-note output policy, and loop timing.
