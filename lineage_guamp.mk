#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guamp/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guamp
PRODUCT_DEVICE := guamp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9)
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/guamp_retail/guamp:11/RPXS31.Q2-58-17-7-3/ad9c24:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=guamp_retail \
    PRIVATE_BUILD_DESC="guamp_retail-user 11 RPXS31.Q2-58-17-7-3 ad9c24 release-keys"

# Gapps
WITH_GMS := true
ifeq ($(WITH_GMS),true)
$(call inherit-product, vendor/gapps/common/common-vendor.mk)
endif

# Crdroid flags
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := false
