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

LOCAL_PATH := hardware/samsung/hidl/sensors

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.sensors@1.0-impl.9610
LOCAL_MODULE_TAGS  := optional
LOCAL_VENDOR_MODULE := true

LOCAL_MODULE_PATH_32 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/lib64
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    Sensors.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libhardware \
    libbase \
    libutils \
    libhidlbase \
    libhidltransport \
    android.hardware.sensors@1.0

LOCAL_STATIC_LIBRARIES := \
    android.hardware.sensors@1.0-convert \
    multihal

LOCAL_POST_INSTALL_CMD := mkdir -p $(LOCAL_MODULE_PATH_32)/hw
LOCAL_POST_INSTALL_CMD += ; mkdir -p $(LOCAL_MODULE_PATH_64)/hw
LOCAL_POST_INSTALL_CMD += ; ln -sf $(LOCAL_MODULE).so $(LOCAL_MODULE_PATH_32)/hw/android.hardware.sensors@1.0-impl.so
LOCAL_POST_INSTALL_CMD += ; ln -sf $(LOCAL_MODULE).so $(LOCAL_MODULE_PATH_64)/hw/android.hardware.sensors@1.0-impl.so

include $(BUILD_SHARED_LIBRARY)
