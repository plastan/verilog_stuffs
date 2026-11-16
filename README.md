# A collection of basic modules and their documentations.



## Primitives 
primitives are predefined things that you can you.
Highly customizable .Probably most of them will be closed source. Developed by fpga vendors.

- BRAM  block ram  used as a storage unit
- DSP   digital signal processor used for math
- PLL  Phase Locked Loop used as clock generator









## Numbers and Maths

### Advantages
unlike c, where number is number is represented like u8, u16, u32  
we can work with arbitrary bit representation of numbers like 9 bit , 17 bit etc.


Signals in verilog/VHDL are normally unsigned.

To count from 0 to 7, we declare a  register `reg [2:0] ` 0 -> 000, 7 -> 111, they are automatically treated as positive numbers.

To represent negative numbers , usage of  `signed` keyword is required. 
``` verilog
reg signed  [2:0] counter;
```

---

| Bits | unsigned decimal value | Signed decimal value |
| ------------- | -------------- | -------------- |
|000 | 0 | 0 |
|001 | 1 | 1 |
|010 | 2 | 2 |
|100 | 4 | -4 |
|101 | 5 | -3 |
|110 | 6 | -2 |
|111 | 7 | -1 |




## 2s compliment  : method to convert singed binary to decimal
invert the binary and add 1
convert to decimal and apply negative sign 
101 -> 010  + 1 -> 011   { -4}


##  Alternative method
start at the rightmost(LSB)                   
move left until u get to first one            100009 100 
invert all the bits to the left of this one   011101 100
convert to decimal and apply -ve sign         - 236






