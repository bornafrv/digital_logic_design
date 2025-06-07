# 🔧 Digital Logic Design Projects – Verilog Modules and Testbenches

## 📘 Project Overview

This repository contains a collection of **Verilog modules**, **testbenches**, and **synthesized files** developed as part of the **Digital Logic Design** course at the **University of Tehran**.

The modules implement key digital components such as **bit counters**, **sequence detectors**, **shift registers**, **counters**, and **custom logic controllers**. Each component is accompanied by its corresponding testbench and, where applicable, its synthesized and blackbox versions.

---

## 🧠 Key Modules

### 🔢 bitCounter.v
Counts the number of bits (1s or 0s) in a digital input stream.  
Includes testbench and synthesized version.

### 🔄 shiftReister.v
Implements a shift register with configurable width.  
Includes simulation, synthesis, and blackbox files.

### 🧮 downCounter.v
Implements a synchronous down-counter with load and reset features.

### 🧭 controller.v
A control logic FSM that manages operation based on internal states and input conditions.

### 🧬 sequenceDetector.v / d_detector.v
Implements pattern matching logic that detects specific binary sequences in serial input.

---

## 🧪 Testbenches

Each major module is verified with a corresponding testbench:
- `a1_testBench.v`, `a3_testBench.v`, `b2_testBench.v`, `c2_testBench.v`, `d2_testBench.v`
- Testbenches simulate input signals and verify expected outputs using waveform viewers or logs.

---

## 📌 Notes

- **Synthesis reports** are available for select modules (`bitCounter`, `downCounter`, `shiftReister`) with `.syn.v` and `.bb.v` files.
- All modules follow **SystemVerilog syntax**, compatible with tools such as **ModelSim**, **Vivado**, and **Quartus II**.
- Refer to `Instruction.pdf` for a detailed breakdown of each task, including expected behavior and validation criteria.

---

## 🎓 Course Info

**Course**: Digital Logic Design  
**University**: University of Tehran  
👨‍🏫 **Instructor**: Professor Zain Navabi

---

## 🛠 How to Use

1. Open the project in your Verilog-compatible simulation environment.
2. Compile the module and corresponding testbench (e.g., `bitCounter.v` + `bitCounter_testBench.v`).
3. Run simulations and verify waveform or output logs.
4. For synthesis, use `*.syn.v` and refer to resource usage reports.
