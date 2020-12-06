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

# Device specific property overrides

# Surfaceflinger
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.latch_unsignaled=1

#Enable csc for vendor image
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.cscsupported=1

#Status of softsim
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.softsim.status=default,default \
    persist.sys.softsim.netmode=4g \
    persist.sys.softsim.type=default

#Cmc properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.cmc.device_type=pd \
    ro.cmc.version=2.0

# Tones
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg \
    ro.config.vc_call_vol_steps=7
