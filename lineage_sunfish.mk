#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common riceDroid stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/gms/Android.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
RICE_MAINTAINER := xioyo
RICE_CHIPSET := Snapdragon730G
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ1A.221205.011/9244662:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
