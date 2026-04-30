cmake_minimum_required(VERSION 3.13)
project(pico_w_mini_piano C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# This repository uses Arduino-Pico APIs (tone, pinMode, digitalRead).
# Build using Arduino IDE / arduino-cli / PlatformIO for real hardware,
# or run with Wokwi's "arduino-community" environment.

add_custom_target(info ALL
  COMMAND ${CMAKE_COMMAND} -E echo "Use Arduino toolchain for firmware build"
)
