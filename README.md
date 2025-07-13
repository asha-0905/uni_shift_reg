# uni_shift_reg
# 🔀 Universal Shift Register (4-bit) – Verilog

## 🎯 Objective
To design and simulate a **universal shift register** that supports multiple data operations:  
**Hold**, **Shift Left**, **Shift Right**, and **Parallel Load** — controlled by a 2-bit mode input.

---

## 📜 Description
This project implements a **4-bit universal shift register** in Verilog that operates on rising clock edges and supports four operations based on `mode`:

- `00` – **Hold** (no change)
- `01` – **Shift Right**
- `10` – **Shift Left**
- `11` – **Parallel Load**

---

## ⚙️ Working Principle

- Input control lines determine the operation on the register contents.
- On reset, the register initializes to `0000`.
- Shifting is done using bitwise concatenation logic.
- Output `q[3:0]` reflects the result of the current operation.
- Operates synchronously with the clock.

---

## 🧠 Skills Demonstrated
- Shift Register Logic Design
- Multiplexed Control Logic Using Case Statements
- Verilog Behavioral Modeling
- Simulation with Custom Testbench
- RTL Simulation (ModelSim)

---

## 🔧 Tools Used
- **ModelSim** (Simulation)
- **Verilog HDL** (Coding)
- **GitHub** (Project Hosting)
- **GVim / VSCode** (Editing)

---

## 📈 Outcome

- Validated the behavior of all 4 operations.
- Correct waveform observed for shifting and parallel load.
- Reinforced understanding of registers, control logic, and Verilog syntax.

---

## 📂 Files Included
- `uni_shift_reg.v` – Verilog module
- `uni_shift_reg_tb.v` – Testbench module
- `waveform.png` – Simulation waveform screenshot
