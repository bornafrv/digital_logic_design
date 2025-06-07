# 🧠 One’s Counter (OC) – Transistor, Gate, and Behavioral Design in Verilog

## 📘 Project Overview

This project explores different **abstraction levels in Verilog** for designing a **One’s Counter (OC)** circuit that calculates the number of '1' bits in its inputs. The project includes **transistor-level**, **gate-level**, and **behavioral** descriptions and demonstrates **structural reuse** to scale up the design from 3-input to 15-input OC.

Designed for the **Digital Logic Design course** at the **University of Tehran**.

---

## 🔧 Key Components

### 🔹 3-Input OC Design
- **Inputs**: a, b, c
- **Output**: [1:0] representing number of 1s
- **Goal**: Optimize transistor count and structure
- **Technologies**:
  - pMOS/nMOS with explicit delays (e.g., `nmos #3`, `pmos #5`)
  - Verilog gate primitives (e.g., `and`, `or`, `xor`)
  - Assign-level logic: `assign [1:0] out = a + b + c;`

---

### 🔹 Scaling Up
- **7-Input OC**: Built using three 3-input OC modules
- **15-Input OC**: Hierarchically constructed from 7- and 3-input modules
- **Delay Calculation**: Manual delay estimation and worst-case path analysis

---

## 🧪 Simulation & Comparison

| Design Level     | Tools Used | Delay Model | Comments                     |
|------------------|------------|-------------|------------------------------|
| Transistor-Level | ModelSim   | Manual gate delays | Closest to physical behavior |
| Gate-Level       | ModelSim   | Matching delays     | Easier to simulate          |
| Assign-Based     | ModelSim   | Same delay applied  | Fastest to write, idealized |

Simulation waveforms from testbenches show correctness and timing differences.

---

## 📝 Deliverables

- ✅ Verilog files (transistor/gate/assign/structural)
- ✅ Testbenches for all designs
- ✅ Timing & delay analysis
- ✅ Waveform screenshots
- ✅ Full PDF report
- ✅ Manual logic simplification + delay calculation

---

## 🎓 Course Info

**Course**: Digital Logic Design  
📍 **University**: University of Tehran  
👨‍🏫 **Instructor**: Prof. Zain Navabi
