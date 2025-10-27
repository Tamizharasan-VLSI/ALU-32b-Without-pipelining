# ⚙️ 32-bit ALU Design (Verilog)

This project implements a **synthesizable 32-bit Arithmetic Logic Unit** using Verilog HDL.  
The ALU supports 16 operations including arithmetic, logical, relational, and shift operations.

---

## 🔹 RTL Module : `alu_32b.v`

### ✅ I/O Description
| Signal | Direction | Width | Description |
|--------|-----------|-------|-------------|
| `clk` | Input | 1 bit | Clock signal |
| `rst` | Input | 1 bit | Asynchronous Reset |
| `a` | Input | 32 bits | Operand A |
| `b` | Input | 32 bits | Operand B |
| `alu_sel` | Input | 4 bits | Operation selector |
| `out` | Output | 64 bits | ALU result |

---

## 🔹 Supported Operations

| alu_sel | Operation | Description |
|--------|-----------|-------------|
| 0000 | ADD | a + b |
| 0001 | SUB | a - b |
| 0010 | MUL | a * b |
| 0011 | DIV | a / b |
| 0100 | Logical Shift Right | a >> 1 |
| 0101 | Logical Shift Left | a << b |
| 0110 | AND | a & b |
| 0111 | OR | a | b |
| 1000 | NAND | ~(a & b) |
| 1001 | NOR | ~(a | b) |
| 1010 | XOR | a ^ b |
| 1011 | XNOR | ~(a ^ b) |
| 1100 | Greater | Max(a, b) |
| 1101 | Equality | (a == b) ? 1 : 0 |
| 1110 | Lesser | Min(a, b) |
| 1111 | Undefined | Outputs `X` |

---

## 🧪 Testbench : `alu_32b_tb.v`

### ✅ Test Features
- Clock generation using toggle
- Reset test
- Applies fixed operands and loops through all 16 ALU operations
- `$monitor` used for runtime logging
- Waveform dump enabled using `$dumpfile` and `$dumpvars`


