#Bliss Audio Mod
BLISS_AUDIO_MOD := viper

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Inherit some common CM stuff.
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/bliss/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := bliss_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:5.1.1/LMY48P/2170233:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 5.1.1 LMY48P 2170233 release-keys"
