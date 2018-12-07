set fastboot_cmd=fastboot
%fastboot_cmd% flash partition:0 gpt_both0.bin
%fastboot_cmd% flash partition:1 gpt_both1.bin
%fastboot_cmd% flash partition:2 gpt_both2.bin
%fastboot_cmd% flash partition:3 gpt_both3.bin
%fastboot_cmd% flash partition:4 gpt_both4.bin
%fastboot_cmd% flash partition:5 gpt_both5.bin
%fastboot_cmd% flash xbl_a xbl.img
%fastboot_cmd% flash xbl_b xbl.img
%fastboot_cmd% flash xbl_config_a xbl_config.img
%fastboot_cmd% flash xbl_config_b xbl_config.img
%fastboot_cmd% flash tz_a tz.img
%fastboot_cmd% flash tz_b tz.img
%fastboot_cmd% flash hyp_a hyp.img
%fastboot_cmd% flash hyp_b hyp.img
%fastboot_cmd% flash aop_a aop.img
%fastboot_cmd% flash aop_b aop.img
%fastboot_cmd% flash keymaster_a keymaster.img
%fastboot_cmd% flash keymaster_b keymaster.img
%fastboot_cmd% flash cmnlib_a cmnlib.img
%fastboot_cmd% flash cmnlib_b cmnlib.img
%fastboot_cmd% flash cmnlib64_a cmnlib64.img
%fastboot_cmd% flash cmnlib64_b cmnlib64.img
%fastboot_cmd% flash devcfg_a devcfg.img
%fastboot_cmd% flash devcfg_b devcfg.img
%fastboot_cmd% flash ImageFv_a ImageFv.img
%fastboot_cmd% flash ImageFv_b ImageFv.img
%fastboot_cmd% flash qupfw_a qupfw.img
%fastboot_cmd% flash qupfw_b qupfw.img
%fastboot_cmd% flash abl_a abl.img
%fastboot_cmd% reboot-bootloader
timeout /t 10
%fastboot_cmd% oem simconfig set SS
%fastboot_cmd% flash avb_custom_key pkmd.bin
%fastboot_cmd% flash abl_b abl.img
%fastboot_cmd% erase ddr
%fastboot_cmd% flash persist persist.img
%fastboot_cmd% flash modem_a modem.img
%fastboot_cmd% flash modem_b modem.img
%fastboot_cmd% flash dsp_a dsp.img
%fastboot_cmd% flash dsp_b dsp.img
%fastboot_cmd% flash boot_a boot.img
%fastboot_cmd% flash boot_b boot.img
%fastboot_cmd% flash dtbo_a dtbo.img
%fastboot_cmd% flash dtbo_b dtbo.img
%fastboot_cmd% flash bluetooth_a bluetooth.img
%fastboot_cmd% flash bluetooth_b bluetooth.img
%fastboot_cmd% flash logfs logfs_ufs_8mb.bin
%fastboot_cmd% flash system_a system.img
%fastboot_cmd% flash system_b system_other.img
%fastboot_cmd% flash vendor_a vendor.img
%fastboot_cmd% flash vendor_b vendor.img
%fastboot_cmd% flash vbmeta_a vbmeta.img
%fastboot_cmd% flash vbmeta_b vbmeta.img
%fastboot_cmd% flash systeminfo_a systeminfo.img
%fastboot_cmd% flash systeminfo_b systeminfo.img
%fastboot_cmd% flash nvdef_a nvdef.img
%fastboot_cmd% flash nvdef_b nvdef.img
%fastboot_cmd% erase userdata
%fastboot_cmd% erase box
%fastboot_cmd% flash splash splash.img
%fastboot_cmd% flash storsec storsec.mbn
%fastboot_cmd% reboot
