# SWD Interface Access via OpenOCD

# Device
STM32 l476rg

## Goal
Connect to STM32 device over SWD to attempt firmware dump.

## Tools Used
- BlueTag (for pin discovery)
- OpenOCD (for connection and memory access)
- GDB (for dumping and stepping through code)

## Steps
1. Used BlueTag to Identify the SWDIO and SWCLK pins on stm32 device
2. Wired to Raspberry Pi Pico running Picoprobe
3. Ran OpenOCD with config for STM32 device
4. Ran GDB on the same port number as OpenOCD for firmware dump

## Observations
- Connected successfully
- Memory reads possible

