# 🧮 16-bit Arithmetic Logic Unit (ALU) – RTL Design, Simulation, and Synthesis

## 📘 Project Overview

This project focuses on the **RTL design, simulation, and synthesis** of a **16-bit ALU** in both **behavioral** and **hardware-oriented** styles.  
It is designed as part of the **Digital Logic Design course** at the **University of Tehran**.

The ALU supports multiple arithmetic and logic operations based on a 3-bit opcode and produces two status flags: **zero** and **negative**.

---

## ⚙️ ALU Specifications

- **Inputs**:
  - `inA`, `inB`: 16-bit signed
  - `inC`: Carry-in (1-bit)
  - `opc`: 3-bit opcode

- **Outputs**:
  - `outW`: 16-bit result
  - `zer`: Zero flag
  - `neg`: Negative flag

---

## 🔁 Supported Operations

| Opcode | Function                            |
|--------|-------------------------------------|
| `000`  | 2’s complement of `inA`             |
| `001`  | `inA + 1`                           |
| `010`  | `inA + inB + inC`                   |
| `011`  | `inA + (inB × 0.5)`                 |
| `100`  | Bitwise AND (`inA & inB`)           |
| `101`  | Bitwise OR (`inA | inB`)            |
| `110`  | Concatenate `inA[7:0] ++ inB[7:0]`  |
| `111`  | No operation (`outW = inA`)         |

---

## 🧪 Simulation & Testing

Both designs are tested using testbenches and waveform outputs.  
Comparison includes:
- ✅ Functional correctness
- 🧭 Timing behavior (pre/post synthesis)
- ⚙️ Gate-level vs behavioral performance

Testbench tests **all 8 opcodes** with edge-case inputs (negative, zero, overflow risk).

---

## 🔧 Synthesis

- Synthesis is done using **Yosys**
- Reports include:
  - Area (gate count)
  - Delay
  - Resource usage

Comparison between behavioral vs structural implementations is documented in the `Report.doc`.

---

## 📈 Example Observations

- Structural design uses **fewer logic levels** but more **muxes and control logic**
- Behavioral design is **faster to code**, but harder to optimize for hardware cost
- Flags `zer` and `neg` are derived combinationally post-ALU output

---

## 🎓 Academic Info

**Course**: Digital Logic Design  
**University**: University of Tehran  
👨‍🏫 **Instructor**: Professor Zain Navabi
