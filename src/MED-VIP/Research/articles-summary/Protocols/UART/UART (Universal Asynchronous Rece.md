# UART (Universal Asynchronous Receiver/Transmitter)

## What it is
UART is an **asynchronous serial communication protocol** used to send data between two devices **without a shared clock**.

UART is extremely common for:
- Debugging
- Console output
- Communication between microcontrollers and PCs

---

## How it works
UART sends data **one bit at a time** using agreed-upon timing.

Because there is **no clock signal**, both devices must agree on:
- Baud rate (speed)
- Data format

Each data frame includes:
- Start bit
- Data bits
- Optional parity bit
- Stop bit(s)

---

## Signals & timing
UART usually uses **two main signals**:

- **TX (Transmit)** – sends data
- **RX (Receive)** – receives data

Optional:
- **GND** – common reference
- **RTS / CTS** – hardware flow control

### Timing notes
- Timing is based on **baud rate**
- Even small mismatches in baud rate can cause errors
- Communication is typically **half-duplex or full-duplex**, but not simultaneous on the same wire

---

## Pros / Cons

### Pros
- Very simple wiring (2 wires + ground)
- Easy to debug
- Widely supported
- Ideal for logging and configuration

###  Cons
- Slower than SPI
- No inherent addressing
- Sensitive to baud rate mismatch
- Not ideal for high-speed or noisy environments

---

## When to use it
Use UART when:
- Communicating with a **PC or terminal**
- Debugging embedded systems
- Data rate is low to moderate
- Simplicity matters more than speed

---

## Simple example
**Microcontroller sending debug messages**:
1. MCU formats text data
2. Data is sent over TX
3. PC receives data on RX via USB-to-UART adapter
4. Text appears in a serial terminal

---

## Common mistakes
- Mismatched baud rates
- Forgetting common ground
- TX connected to TX instead of RX
- Wrong data format (8N1 vs others)
- Assuming UART is noise-resistant (it isn’t)

---

## Analogy
Think of UART like **sending letters by mail**:
- No shared timing signal
- Sender and receiver must agree on the format
- Slower but simple
- Works over longer distances than SPI
