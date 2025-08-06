#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/giulia

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := giulia

## Device identifier
PRODUCT_DEVICE := giulia
PRODUCT_NAME := twrp_giulia
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := giulia
PRODUCT_MANUFACTURER := OnePlus

# Assert
TARGET_OTA_ASSERT_DEVICE := PKG110,OP5D2BL1,CPH2691,OP5D3BL1,CPH2647,OP5D3BL1

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 111
TW_H_OFFSET := -111
