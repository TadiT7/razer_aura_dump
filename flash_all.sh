#!/bin/bash
fastboot flash partition:1 gpt_both1.bin
fastboot flash partition:2 gpt_both2.bin
fastboot flash partition:3 gpt_both3.bin
fastboot flash partition:4 gpt_both4.bin
fastboot flash partition:5 gpt_both5.bin
fastboot flash xbl_a xbl.img
fastboot flash xbl_b xbl.img
fastboot flash xbl_config_a xbl_config.img
fastboot flash xbl_config_b xbl_config.img
fastboot flash tz_a tz.img
fastboot flash tz_b tz.img
fastboot flash hyp_a hyp.img
fastboot flash hyp_b hyp.img
fastboot flash aop_a aop.img
fastboot flash aop_b aop.img
fastboot flash keymaster_a keymaster.img
fastboot flash keymaster_b keymaster.img
fastboot flash cmnlib_a cmnlib.img
fastboot flash cmnlib_b cmnlib.img
fastboot flash cmnlib64_a cmnlib64.img
fastboot flash cmnlib64_b cmnlib64.img
fastboot flash devcfg_a devcfg.img
fastboot flash devcfg_b devcfg.img
fastboot flash ImageFv_a ImageFv.img
fastboot flash ImageFv_b ImageFv.img
fastboot flash qupfw_a qupfw.img
fastboot flash qupfw_b qupfw.img
fastboot flash abl_a abl.img
fastboot reboot-bootloader
sleep 10
fastboot oem simconfig set SS
fastboot flash avb_custom_key pkmd.bin
fastboot flash abl_b abl.img
fastboot erase ddr
fastboot flash persist persist.img
fastboot flash modem_a modem.img
fastboot flash modem_b modem.img
fastboot flash dsp_a dsp.img
fastboot flash dsp_b dsp.img
fastboot flash boot_a boot.img
fastboot flash boot_b boot.img
fastboot flash dtbo_a dtbo.img
fastboot flash dtbo_b dtbo.img
fastboot flash bluetooth_a bluetooth.img
fastboot flash bluetooth_b bluetooth.img
fastboot flash logfs logfs_ufs_8mb.bin
fastboot flash system_a system.img
fastboot flash system_b system_other.img
fastboot flash vendor_a vendor.img
fastboot flash vendor_b vendor.img
fastboot flash vbmeta_a vbmeta.img
fastboot flash vbmeta_b vbmeta.img
fastboot flash systeminfo_a systeminfo.img
fastboot flash systeminfo_b systeminfo.img
fastboot flash nvdef_a nvdef.img
fastboot flash nvdef_b nvdef.img
fastboot erase userdata
fastboot erase box
fastboot flash splash splash.img
fastboot flash storsec storsec.mbn
fastboot reboot
