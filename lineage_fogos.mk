#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_fogos
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogos_g-user 14 U1UGS34M.23-82-2-6 0b9749 release-keys" \
    BuildFingerprint=motorola/fogos_g/fogos:11/U1UGS34.23-82-2-6/e21904:user/release-keys \
    DeviceProduct=fogos_g

# Axion Stuff
AXION_MAINTAINER := JNWSG_JINWOO
AXION_CAMERA_REAR_INFO := 50,2
AXION_CAMERA_FRONT_INFO := 16
AXION_PROCESSOR := Snapdragon_695_6nm
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_VIPERFX := true

# Axion CPU Flags
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7

# CPUsets configuration
AXION_CPU_BG := 0-3
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-2
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-5
AXION_CPU_DISPLAY := 6-7
AXION_CPU_AUDIO := 0-4

