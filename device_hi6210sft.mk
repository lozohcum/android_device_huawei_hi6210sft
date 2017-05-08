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

# Blobs
PRODUCT_RESTRICT_VENDOR_FILES := false
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_PROPERTY_OVERRIDES += \
    	hw.lcd.lcd_density=320 \
    	ro.sf.lcd_density=320 \

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
	setup_fs

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Graphics
PRODUCT_PACKAGES += \
	ion-unit-tests \
	iontest \
	libGLES_android \
	libion

# Huawei P8 Lite Components
PRODUCT_PACKAGES += \
	gatord \
	hwclock

# Live Wallpapers
PRODUCT_PACKAGES += \
    	Galaxy4 \
    	HoloSpiralWallpaper \
    	LiveWallpapers \
    	LiveWallpapersPicker \
    	MagicSmokeWallpapers \
    	NoiseField \
    	PhaseBeam \
    	VisualizationWallpapers \
    	librs_jni

PRODUCT_COPY_FILES += \
    	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


