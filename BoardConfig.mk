#
# Copyright (C) 2020 The LineageOS Project
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

# Board
TARGET_BOARD_PLATFORM := universal9611
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := exynos9611
TARGET_BOARD_PLATFORM_GPU := mali-g72

# build/make/core/Makefile
TARGET_NO_BOOTLOADER := true

# Enable hardware/samsung
BOARD_VENDOR := samsung

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_SOURCE = kernel/samsung/m30sdd/
TARGET_KERNEL_CONFIG = m30sdd_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r353983c

BOARD_KERNEL_IMAGE_NAME      := Image
BOARD_KERNEL_BASE            := 0x10000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_SEPARATED_DTBO  := true
BOARD_CUSTOM_DTBOIMG_MK      := $(PLATFORM_PATH)/kernel/dtbo.mk

BOARD_KERNEL_OFFSET          := 0x00008000
BOARD_KERNEL_RAMDISK_OFFSET  := 0x01000000
BOARD_KERNEL_TAGS_OFFSET     := 0x00000100
BOARD_BOOT_HEADER_VERSION    := 1
BOARD_BOOT_HEADER_NAME       := SRPSE30A002RU

BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_KERNEL_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_BOOT_HEADER_NAME)
BOARD_MKBOOTIMG_ARGS += --cmdline $(BOARD_KERNEL_CMDLINE)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 57671680
BOARD_CACHEIMAGE_PARTITION_SIZE    := 314572800
BOARD_DTBOIMG_PARTITION_SIZE       := 8388608
BOARD_PRODUCTIMAGE_PARTITION_SIZE  := 310378496
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 5033164800
BOARD_VENDORIMAGE_PARTITION_SIZE   := 629145600
BOARD_FLASH_BLOCK_SIZE             := 131072

# FileSystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
