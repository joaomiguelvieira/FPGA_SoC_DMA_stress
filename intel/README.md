# Intel Cyclone V (Terasic DE1-SoC) evaluation

This folder contains the files for reproducing the test bench used for assessing the performance of the high-performance on-chip interfaces of the Intel Cyclone V device (Terasic DE1-SoC board).

![de1_soc](img/de1_soc.png "DE1-SoC board")

## Content of this folder

* `./bin/` contains the raw binary files required to program the FPGA for all the twelve tested hardware configurations (so that there is no need for recompiling the designs).
* `./hw/` contains the project files required to recriate the projects used to produce the files in `./bin/`.
* `./sdcard/` contains the files to be written to the SD card by the automatic script.
* `./sw/` contains the source code of the applications to be executed on the device.
* `./create_linux_system.sh` is a script that automatically partitions the SD card and writes the required files to configure the FPGA at boot time and run the Linux operating system.

## Requisites

1. Host PC running Windows or Linux (preferably Linux);
2. Terasic DE1-SoC board;
3. Micro-SD card with at least 1 GB.
4. Quartus Prime 18.1 **(both Lite and Standard versions are supported)**.

## Implementing a project

All the projects inside this folder can be implemented using the same method. The implementation of the project contained in `./hw/duplex_32bit/` is demonstrated below. In case you are interested in exploring the project files, follow all the steps below. Otherwise you can skip steps 1 through 5.

1. Make sure that the intelFPGA tools are in your `$PATH`. For example, in my case, I source the following script.
```
VERSION=18.1
INSTALL_DIR=/opt/intelFPGA

# quartus
export PATH=$INSTALL_DIR/$VERSION/quartus/bin:$PATH
export LM_LICENSE_FILE=<port@server>

# arm ds
SOCEDS_DEST_ROOT=$INSTALL_DIR/$VERSION/embedded
QUARTUS_ROOTDIR=$INSTALL_DIR/$VERSION/quartus
source $INSTALL_DIR/$VERSION/embedded/env.sh
```
2. Launch an embedded command shell. For doing so, execute the script `<intelFPGA install dir>/embedded/embedded_command_shell.sh`.
3. Launch Intel Quartus Prime and open the project by selecting *File*, *Open Project*. Select the file `./hw/duplex_32bit/quartus/DE1_SoC_demo.qpf`.
4. You can access the top `.vhd` file by double clicking on *DE1_SoC_top_level* under *Project Navigator*.
5. You can analyze the architecture hierarchy of the system using the *Platform Designer* tool within Quartus Prime. Select *Tools*, *Platform Designer* and open the file `./hw/duplex_32bit/quartus/soc_system.qsys`. You should see the content shown below. There is no need to change anything or reimplement the project, since all the required files were already produced. Thus, when you are done analyzing the architecture, close both the Platform Designer and Quartus Prime and proceed for the next step.
![platform_designer](img/platform_designer.png "Platform Designer")
6. Connect the micro-SD card to your computer using a card reader and find out the name assigned by the operating system. When using Linux, this information can be obtained through the command `dmesg`. For instance, in my case, I obtained the following output, therefore my micro-SD card identifier is `/dev/sde`.
![dmesg_output](dmesg_output.png "dmesg output")
7. 