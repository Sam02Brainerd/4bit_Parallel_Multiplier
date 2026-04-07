# 🔹 4-bit Multiplier (7-Segment Display Output)

## 📌 Description

This implementation extends the multiplier by displaying output in **decimal format** using a 7-segment display.

---

## ⚙️ Working

1. Multiply inputs:

```
P = A × B
```

2. Convert binary → BCD
3. Display digits using multiplexed 7-segment display

---

## 🔢 Example

| A  | B  | Output |
| -- | -- | ------ |
| 3  | 5  | 15     |
| 10 | 4  | 40     |
| 15 | 15 | 225    |

---

## 🚀 How to Run

1. Add:

   * Multiplier
   * BCD converter
   * Top module
2. Add constraints file
3. Generate bitstream
4. Program FPGA

---

## 🎯 Key Concepts

* Binary to BCD conversion
* Time-division multiplexing
* 7-segment decoding

---
