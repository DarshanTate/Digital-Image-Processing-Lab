# Shannon-Fano Encoding in MATLAB

This repository contains a MATLAB implementation of the Shannon-Fano encoding algorithm, a lossless data compression technique. The algorithm assigns binary codes to symbols based on their probabilities, with the goal of minimizing the average code length.

## Table of Contents
- [Introduction](#introduction)
- [Code Overview](#code-overview)
- [Output](#output)
- [Dependencies](#dependencies)

## Introduction

Shannon-Fano coding is an entropy encoding technique used for lossless data compression. It works by assigning shorter binary codes to more probable symbols and longer codes to less probable symbols. This implementation demonstrates the algorithm step-by-step, generating binary codes for a given set of symbols and their probabilities.

## Code Overview

The MATLAB script performs the following steps:
1. **Input Definition**: Defines the symbols and their corresponding probabilities.
2. **Sorting**: Sorts the symbols in descending order of probability.
3. **Shannon-Fano Encoding**: Generates binary codes for each symbol by recursively splitting the symbol set into two subsets with as equal total probabilities as possible.
4. **Output**: Displays the symbols, their probabilities, and the corresponding Shannon-Fano codes.

### Key Variables
- `symbols`: Array of symbols (e.g., `['A', 'B', 'C', 'D', 'E']`).
- `probabilities`: Array of probabilities corresponding to the symbols (e.g., `[0.5, 0.2, 0.2, 0.05, 0.05]`).
- `codes`: Cell array storing the binary codes for each symbol.

### Example Input
```matlab
symbols = ['A', 'B', 'C', 'D', 'E'];
probabilities = [0.5, 0.2, 0.2, 0.05, 0.05];
```

## Output

The script outputs a table displaying the symbols, their probabilities, and the corresponding Shannon-Fano codes. For the example input, the output will look like this:

```
Symbol  Probability  Code
A       0.50        0
B       0.20        10
C       0.20        11
D       0.05        110
E       0.05        111
```

## Dependencies

- MATLAB 

## Author
Darshan Tate (BT22ECI011)

