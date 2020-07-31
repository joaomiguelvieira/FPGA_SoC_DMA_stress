# Xilinx 7010 (Digilent Zybo board) evaluation

This folder contains the files for reproducing the test bench used for assessing the performance of the high-performance on-chip interfaces of the Xilinx ZYNQ 7010 device (Digilent Zybo board).

![zybo_board](img/zybo.jpg "Digilent Zybo board")

The evaluation methodology using the Zybo board consisted of implementing a hardware system in the Programmable Logic capable of fully exploiting the high-performance on-chip interfaces between the Processing System and the Programmable Logic. The software component of the artifact is a simple bare-metal C application that controls and synchronizes data transfers through the Direct Memory Access engines implemented on the Programmable Logic.

## Requisites

1. Host PC running Windows or Linux (preferably Linux);
2. Digilent Zybo board **(not Zybo Z7)**;
3. Xilinx Vivado 2018.3 **(other versions of Vivado were not tested and may not be supported)**.

## Implementing a project

All the projects inside this folder can be implemented using the same method. The implementation of the project contained in `./hw/duplex_32bit/` is demonstrated below.

1. Open Vivado 2018.3 and select *Open Project*. Navigate to `./hw/duplex_32bit/` and open the file named `BandwidthAssessment.xpr`.
2. There is no need to do anything in Vivado since the project was already synthesized, implemented and the bitstream generated. Nevertheless, feel free to explore the design by selecting *IP INTEGRATOR*, *Open Block Design*. In the case of this project, you will see the top architecture below.
![top_arch](img/top_arch.png "Top architecture")
3. After you are done exploring the architecture, launch Vivado SDK by selecting *File*, *Launch SDK*. Make sure that both *Exported location* and *Workspace* point to *<Local to Project>* and select *Ok*.
4. Connect the Zybo board to your computer through the *PROG/UART* interface. Make sure that the boot mode (pins JP5) is configured to JTAG through the placement of the jumper wire as shown in the initial picture of the board (small blue piece on the upper right corner of the board). Turn on the board's power switch.
5. Find the port to which the board is connected to your computer. In Linux, that information can be found with the command `dmesg`. For example, in my system I get the output below, indicating that my board is represented by the device descriptor `/dev/ttyUSB1`.
```
[44889.574600] ftdi_sio 1-3.2:1.1: FTDI USB Serial Device converter detected
[44889.574638] usb 1-3.2: Detected FT2232H
[44889.574874] usb 1-3.2: FTDI USB Serial Device converter now attached to ttyUSB1
```
6. Open a serial console to see the output produced by the device. In Linux, you may use `screen` or `minicom`. For example, `sudo screen /dev/ttyUSB1 115200`.
7. In Vivado SDK, analyze the content of the files `BandwidthAssessment/src/*.c` for implementation details. Then, select *Run*, *Run History*, *BandwidthAssessment*.
8. If all went well, you should get an output in the serial console similar to the following.
```
* DATA BLOCK SIZE: 32 MB
* CHANNEL WIDTH: 32-bit
* N RUNS: 200

====================================================================
| CHANNELS |  EXPECTED  |       OBSERVED (avg, min, max, sd)       |
--------------------------------------------------------------------
| 0        | 800 MB/s   | 799.9534, 799.9530, 799.9564, 0.0003
| 0,1      | 1600 MB/s  | 1599.8422, 1599.8359, 1599.8430, 0.0018
| 0,2      | 1600 MB/s  | 1599.8353, 1599.7912, 1599.8440, 0.0082
| 0,1,2    | 2400 MB/s  | 2288.6209, 2284.9465, 2292.7057, 0.8824
| 0,1,2,3  | 3200 MB/s  | 2759.8157, 2666.9749, 2793.8057, 27.4401
--------------------------------------------------------------------
```