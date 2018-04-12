$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product-if-exists, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/h872/h872-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/h872/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/h872/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Release name
PRODUCT_RELEASE_NAME := h872

PRODUCT_DEVICE := h872
PRODUCT_NAME := omni_h872
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H872
PRODUCT_MANUFACTURER := LGE

