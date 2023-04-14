#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
TARGET_IS_PIXEL := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := evolution_sunfish

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ2A.230405.003 9719927 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ2A.230405.003/9719927:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
