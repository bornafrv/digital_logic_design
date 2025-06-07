# 🧮 RTL-Based `cos(x)` Accelerator – Taylor Series Expansion

## 📘 Project Overview

This project implements a **hardware accelerator** for computing `cos(x)` using the **Taylor series expansion** in fixed-point arithmetic. The design features a **datapath and controller architecture** following the **Hoffman FSM model**, optimized for FPGA synthesis and simulation.

Developed as part of an **advanced digital systems design course** at the **University of Tehran**, the project showcases RTL-level integration, precision control, and modularity.

---

## 📐 Design Features

### ✅ Taylor Series Formula:
cos(x) ≈ 1 - x²/2! + x⁴/4! - x⁶/6! + ... for small x

- Computed up to `n` terms, where `n` is user-defined.
- All operations are in **fixed-point** format.

### 🔧 Components Used:
- Adders/Subtractors
- Multiplier
- Registers
- Comparator
- Counter
- ROM for coefficient lookup
- FSM Controller (Hoffman Model)

---

## 🚀 How to Run

1. 🛠 Open in **Quartus II** or your preferred Verilog toolchain.
2. 📥 Load and initialize ROM with the provided `sin.mif.txt`.
3. 🧪 Run simulation using `cosx_testBench.v`.
4. 🔁 Test each module individually before full integration.
5. 🔧 Synthesize to generate `.vo` and `.sdo` files for backend flows.

---

## 🔎 Highlights

- ✅ **Precision Control**: Adjustable number of Taylor terms via counter.
- ✅ **Datapath & FSM Separation**: Structured and scalable.
- ✅ **Testbench Ready**: Modular testing of full pipeline.
- ✅ **ROM Initialization**: Coefficient loading through `.mif` file.
- ✅ **Synthesis-Ready**: Blackbox (`*_bb.v`) and synthesized modules (`*_syn.v`) included.

---

## 📄 Deliverables

- ✔️ HDL Modules (arithmetic, control, memory)
- ✔️ FSM Controller with Hoffman diagram logic
- ✔️ Simulation waveforms
- ✔️ Synthesis report & netlist
- ✔️ Full documentation in `Instruction.pdf`

---

## 🎓 Academic Info

**Course**: Advanced Digital Systems Design Lab  
**University**: University of Tehran  
👨‍🏫 **Supervisor**: Professor Zain Navabi

---

> 📌 This project highlights the efficient implementation of mathematical functions in hardware using RTL methodology. It demonstrates structured datapath/control design, modular development, and fixed-point arithmetic management.
