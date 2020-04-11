#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := beryllium

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pocophone F1
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := beryllium
TARGET_VENDOR_DEVICE_NAME := beryllium
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=beryllium \
    BUILD_PRODUCT=beryllium \
    PRODUCT_NAME=beryllium

# Blacklist Properties
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.build.date \
    ro.build.date.utc
