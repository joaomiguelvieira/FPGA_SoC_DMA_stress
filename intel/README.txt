Hey Joao,

You can update the Quartus project however you like, then just run the following
command from an embedded command shell to compile the Quartus project and
format/write an sdcard with all files:

Note that the create_linux_system has all preloader, u-boot, and linux-related
steps commented out as I've given you pre-compiled versions in the sdcard/
directory. The script therefore only compiles the Quartus design and writes an
sdcard.

$ ./create_linux_system.sh /dev/sdX

Remember to replace the "X" in /dev/sdX with the name of your sdcard as seen by
your computer when you plug it in. Please be CAREFUL and choose the correct
device here, or else you may accidentally format the wrong partition on your
computer, and you will lose data!

Once the sdcard is successfully written, do the following steps:

1) Plug a UART cable to the board's "UART" port.

2) Install "minicom" on your computer with
    $ sudo apt install minicom

3) Launch a serial console on your computer.
    $ sudo minicom --device /dev/ttyUSB0

4) Configure minicom as shown in the attached picture.

5) Set the MSEL switch on the board to "000000".

6) Power on the board, and you will see a lot of text appear on the serial
   console as the board boots from the contents of the sdcard. Within 2 seconds of
   power up, you will see the following text:

    "Hit any key to stop autoboot:"

7) Push any button to stop the boot process, then type the following 2 commands
   on the shell that appears:

    $ env default -a
    $ saveenv

8) You can now unplug and replug the power on the board, and it should be ready
   for you to use. You can close minicom and can unplug the UART cable as you
   will no longer be needing it.

9) If everything was successful, you should see an alternating pattern on the
   development board's LEDs around 8 seconds after power up. The memory
   controller is also correctly initialized, so you can test your project now.

I added the msgdma C library in the sw/hps/application/msgdma directory. The
functions of interest for you are the public API functions defined in msgdma.h.

  # The version without the "response" in the name as the HW I configured has
  # this feature disabled.

  msgdma_dev msgdma_csr_descriptor_inst(void *csr_base,
                                        void *descriptor_base,
                                        uint32_t descriptor_fifo_depth,
                                        uint8_t csr_burst_enable,
                                        uint8_t csr_burst_wrapping_support,
                                        uint32_t csr_data_fifo_depth,
                                        uint32_t csr_data_width,
                                        uint32_t csr_max_burst_count,
                                        uint32_t csr_max_byte,
                                        uint64_t csr_max_stride,
                                        uint8_t csr_programmable_burst_enable,
                                        uint8_t csr_stride_enable,
                                        uint8_t csr_enhanced_features,
                                        uint8_t csr_response_port);

Then call

  void msgdma_init(msgdma_dev *dev);

to initialize the device, at which point you're ready to program the DMA unit
by submitting a descriptor:

  msgdma_standard_descriptor desc;
  int msgdma_construct_standard_mm_to_mm_descriptor(msgdma_dev *dev,
                                                    msgdma_standard_descriptor *descriptor, // Pass a pointer to the descriptor defined above here.
                                                    void *read_address,
                                                    void *write_address,
                                                    uint32_t length,
                                                    uint32_t control);

You can then start a transfer either synchronously or asynchronously, and wait
for it to finish.

  int msgdma_standard_descriptor_async_transfer(msgdma_dev *dev, msgdma_standard_descriptor *desc);
  int msgdma_standard_descriptor_sync_transfer(msgdma_dev *dev, msgdma_standard_descriptor *desc);
  void msgdma_wait_until_idle(msgdma_dev *dev);

I have reserved the upper 256MB of the DDR memory for you so you can program
your DMA with a src and dst address anywhere within 0x30000000 - 0x40000000.

I compiled the HW and it compiles correctly, but I don't have a DE1-SoC on me to
test it. The software part in this README is written from memory though, so
hopefully it works. Let me know otherwise and I'll see how I can help.

Best,
Sahand
