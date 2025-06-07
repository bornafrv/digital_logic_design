# 🔄 SR Latches and D Flip-Flops – RTL Design and Simulation in Verilog

## 📘 Project Overview

This project focuses on the **design, simulation, and timing analysis** of **SR latches** and **D flip-flops** using **Verilog HDL**, forming a core part of the **Digital Logic Design course** at the **University of Tehran**.

The goal is to explore the behavior of basic sequential elements, investigate **timing constraints** (e.g., setup/hold times), and implement advanced versions including **Preset (PRE)** and **Clear (CLR)**.

---

## 🔧 Components Overview

### 🟢 1. SR Latch (Active-Low Inputs)
- Implemented using **cross-coupled NAND** gates
- Delays: `#4` ns for NMOS, `#6` ns for PMOS
- Simulated behavior under:
  - Valid input transitions
  - **Illegal state**: `S = 0` and `R = 0` (should cause loss of memory or unstable output)

### 🔵 2. D Flip-Flop (Built from SR-Latches)
- Constructed using **three SR-latches**
- **Edge-triggered behavior** simulated
- Timing constraints:
  - `tsetup`: Minimum time before rising edge of clock that D must be stable
  - `thold`: Minimum time after clock edge D must remain stable
- Simulations also include:
  - **Setup/Hold violations**
  - Propagation delay analysis

### 🟠 3. D Flip-Flop with Preset and Clear
- Enhanced design supporting **asynchronous PRE & CLR**
- `PRE` forces `Q = 1`, `CLR` forces `Q = 0`
- Tested under:
  - Normal D/CLK operation
  - Asynchronous activation of `PRE` and `CLR`
  - **Both PRE & CLR active** simultaneously (illegal state)

---

## 📈 Simulation Highlights

- **Waveform Snapshots**:
  - SR latch with bouncing inputs
  - Flip-flop under violation conditions
  - PRE/CLR priority testing
- **Behavior under edge cases** (undefined states, metastability)
- **Delay and response justification** with transistor-level delays

---

## 🎯 Deliverables

- ✅ Verilog implementations (SR Latch, DFF, DFF with PRE/CLR)
- ✅ Testbenches for each module
- ✅ Timing diagrams and waveform analysis
- ✅ Explanation of setup/hold constraints
- ✅ Written report documenting all results

---

## 🎓 Academic Info

**Course**: Digital Logic Design  
**University**: University of Tehran  
👨‍🏫 **Instructor**: Professor Zain Navabi
