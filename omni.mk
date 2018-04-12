# Release name
PRODUCT_RELEASE_NAME := h872

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h872/omni_h872.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h872
PRODUCT_NAME := h872
PRODUCT_BRAND := lge
PRODUCT_MODEL := h872
PRODUCT_MANUFACTURER := lge
