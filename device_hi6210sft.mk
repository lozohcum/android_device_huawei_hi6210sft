# Android Open Source Project Common Stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_PACKAGES += \
    	charger_res_images \
	charger \
	Launcher3

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
	 persist.sys.usb.config=mtp \
         ro.adb.secure=0 \
         ro.secure=0 \
	 sys.usb.configfs=0

# AAPT
PRODUCT_AAPT_CONFIG := xxhdpi normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# ART
PRODUCT_RUNTIMES := runtime_libart_default

# Bionic
PRODUCT_COPY_FILES += \
    	bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

