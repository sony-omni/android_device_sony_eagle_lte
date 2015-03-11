# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/sony/eagle/full_eagle.mk)

PRODUCT_PROPERTY_OVERRIDES += \
   telephony.lteOnGsmDevice=1 \
   ro.telephony.default_network=9

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=D2303 \
BUILD_FINGERPRINT=Sony/D2303/D2303:4.4.4/18.3.1.C.0.21/2n9_bg:user/release-keys \
PRIVATE_BUILD_DESC="D2303-user 18.3.1.C.0.21 2n9_bg release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_eagle_lte
PRODUCT_DEVICE := eagle_lte
