# Unvalidated Memory Access in Assembly

This repository demonstrates a common but subtle error in assembly programming: unvalidated memory access. The code attempts to access memory using an index that isn't checked for bounds.  This can lead to segmentation faults or access violations.

The `bug.asm` file contains the problematic code. The `bugSolution.asm` file offers a corrected version with improved bounds checking.

The issue is particularly relevant when dealing with arrays or dynamic memory allocation where the index needs explicit validation to ensure it stays within the allocated region.

**Key Learning Points:**
* **Bounds Checking:**  Always validate array indices or memory offsets before accessing data.
* **Architecture Awareness:**  Be aware of architecture-specific details, such as register sizes and addressing modes, when writing assembly code.
* **Error Handling:**  Implement robust error handling to gracefully manage out-of-bounds access attempts.