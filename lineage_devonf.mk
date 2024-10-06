#
# Copyright (C) 2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/devonf/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_devonf
PRODUCT_DEVICE := devonf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G 

# Matrixx flags
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_CHIPSET := mt6855
MATRIXX_BATTERY := 5000 mAh
MATRIXX_DISPLAY := 2400 x 1080
MATRIXX_MAINTAINER := Soviet 

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=devonf_g_sys \
    PRIVATE_BUILD_DESC="devonf_g_sys-user 14 U1TNS34M.82-12-7-4 00d08 release-keys"

BUILD_FINGERPRINT := motorola/devonf_g_sys/devonf:14/U1TNS34M.82-12-7-4/00d08:user/release-keys
