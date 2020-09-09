#!/bin/bash
# This approach is needed due to the following messages from
# runnning `qmk setup`:
#   Missing udev rules for 'dfu' boards. You'll need to use `sudo` in order to flash them.
#   Missing udev rules for 'input_club' boards. You'll need to use `sudo` in order to flash them.
#   Missing udev rules for 'stm32' boards. You'll need to use 'sudo' in order to flash them.
#   Missing udev rules for 'bootloadhid' boards. You'll need to use `sudo` in order to flash them.
#   Missing udev rules for 'caterina' boards. You'll need to use `sudo` in order to flash them.

# Go to https://beta.docs.qmk.fm/faqs/faq_build

# I don't remember if I hit the on board reset button.

# I tried to run this twice in a row, but it output:
#   dfu-programmer: no device present.
#   dfu-programmer: no device present.
#   dfu-programmer: no device present.

# I think that I unplugged and re-plugged in the elite-c for it to
# succussfully flash again.

# Plug in elite-c and run the following:

sudo dfu-programmer atmega32u4 erase --force
sudo dfu-programmer atmega32u4 flash crkbd_rev1_justin0979.hex
sudo dfu-programmer atmega32u4 reset
