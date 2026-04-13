# Lecture Homework Week 03 - Tuesday

For this lecture homework, you will creat a bidirectional Shift Register. Shift 
registers can either take the most significant or the least significant bit first, 
hence the term bidirectional. 

In this assignment, you will configure the direction of the shift register using 
parameters. Parameters are used to configure modules at synthesis time. You can 
learn about parameter [in this article on ChipVerify](https://www.chipverify.com/verilog/verilog-parameters)

To better understand what a shift register is, [read this article from Geeks For Geeks](https://www.geeksforgeeks.org/digital-logic/shift-registers-in-digital-logic/).
This assignment, according to the article, is a serial-in, parallel-out bidirectional shifter. 

## Getting the Code

As with the previous lecture homework, this assignment is hosted on GitHub. You will create your own repository using the assignment repository as a template. To do this:

    Click on "Use this template."
    Select "Create a new repository."
    Give your repository a descriptive name.
    Click "Create repository."

Once created, clone the repository to your local machine or open it in a GitHub Codespace to begin working.

## Writing the Bidirectional Shift Register

The bidirectional shift register four inputs, and one output. Additionally, this
module will accept one parameter, the direction.

Below is a table with all the module parameters, inputs and outputs. The inputs and
outputs should match the order of the table in your Verilog code. All names, including
case, should match as well.

| Name      | Type      | Size    | Description                                               |
|-----------|-----------|---------|-----------------------------------------------------------|
| DIRECTION | parameter | N/A     | The direction of the shift register, MSB=1, LSB=0         |
| clk       | input     | 1-bit   | This module is synchronous, so this is the clock signal   |
| rst       | input     | 1-bit   | Indicates that the register should be reset to all 0's    |
| data      | input     | 1 bit   | The input data to be shifted into the register            |
| wr_en     | input     | 1-bit   | The write enable for the data. 1 means shift in a new bit |
| out       | output    | 32-bits | All the bits stored in the shift register                 |

Your module should then take in a bit and shift it into the register only when the clock is on
the positive edge, and when the value of wr_en is 1'b1. The output, out, should always be the 
current value of the register, but should only change on the positive edge of the clock.

Write your Verilog code in the file shift_register.sv and test it with the test bench.

## Synthesizing

Before running the simulation, you must compile (synthesize) the code using iverilog. Run the following command in your terminal:

```bash
iverilog -o testbench -g2009 testbench.sv
```

This command generates a simulation executable named testbench.
Running the Testbench

Run the simulation and observe the results. If your design is correct, you should see:

```bash
VCD info: dumpfile tb.vcd opened for output.
Tests Passed!
```

If the design is incorrect, the output will show:

```bash
VCD info: dumpfile tb.vcd opened for output.
Failed tests
````

If your tests are failing and you cannot identify the error, use GTKWave to inspect the waveforms stored in tb.vcd.

## What to Turn In

Submit your work by committing and pushing your changes to your GitHub repository.

Finally, upload the assignment via Gradescope. When prompted, log in to GitHub, select your homework repository, and submit.