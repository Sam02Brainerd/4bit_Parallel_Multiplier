# 🚀 FPGA-Based 4-bit Parallel Multiplier & DSP Applications

## 📌 Overview

This project implements a **4-bit parallel multiplier** on FPGA and extends it to demonstrate **Digital Signal Processing (DSP) applications** using Verilog HDL.

The design is implemented and tested on the **Basys 3 FPGA board** using Vivado.

---

## 🧠 Project Variations

This repository contains **three implementations**:

### 1️⃣ Switch Input → LED Output

* Inputs are given using onboard switches
* Output is displayed in binary using LEDs
* Basic verification of multiplier functionality

---

### 2️⃣ Switch Input → 7-Segment Display

* Inputs via switches
* Output converted from binary → BCD
* Displayed as **decimal value** on 7-segment display

---

### 3️⃣ FIR Filter using Multiplier (DSP Application)

* Multiplier used as a core unit in a **3-tap FIR filter**
* Stores previous inputs using shift registers
* Output computed as:

[
y[n] = x[n] + 2x[n-1] + 3x[n-2]
]

* Output displayed on 7-segment display

---

## ⚙️ Tools & Hardware

* **Vivado (Xilinx)**
* **Basys 3 FPGA Board**
* Verilog HDL

---

## 🏗️ Project Architecture

```
Switch Input → Multiplier → (Optional DSP Block) → BCD Converter → 7-Segment Display
```

---

## 🚀 How to Run

1. Open Vivado
2. Create/Open Project
3. Add files:

   * `.v` files → Design Sources
   * `.xdc` file → Constraints
4. Set **top module**
5. Run:

   * Synthesis
   * Implementation
   * Generate Bitstream
6. Program FPGA using Hardware Manager

---

## 🎯 Features

* Parallel multiplication (fast computation)
* Real-time FPGA implementation
* Decimal display using 7-segment
* DSP integration (FIR filter)

---

## 📊 Applications

* Digital Signal Processing (DSP)
* Embedded systems
* Arithmetic Logic Units (ALU)
* Real-time hardware acceleration

---

## 🧠 Key Learning Outcomes

* FPGA design flow (Vivado)
* Verilog-based hardware design
* Binary to BCD conversion
* Multiplexed 7-segment display
* DSP hardware implementation

---

## 🎤 Summary

This project demonstrates how a basic arithmetic unit (multiplier) can be extended into a **complete DSP system on FPGA**, showcasing both fundamental and advanced digital design concepts.

---
