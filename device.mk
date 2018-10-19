#
# Copyright (C) 2020 LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/m30sdd

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Device DPI
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    Snap

# Display Cutout
PRODUCT_PACKAGES += \
    NoCutoutOverlay

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

# FM radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Init
PRODUCT_PACKAGES += \
    init.samsung.rc \
    init.usb_accessory.rc \
    fstab.enableswap

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio_keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio_keys.kl

# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service.samsung-exynos

# LPM
PRODUCT_PACKAGES += \
    libsuspend

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.usb.rc \
    init.recovery.exynos9611.rc

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.9610

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# SP-NDK
PRODUCT_PACKAGES += \
    libvulkan

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# Property overrides
-include $(LOCAL_PATH)/product_prop.mk

# Inherit from vendor
$(call inherit-product, vendor/samsung/m30sdd/m30sdd-vendor.mk)
