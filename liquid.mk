#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
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

# Call telephony tech first
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := vigor

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# device
$(call inherit-product, device/htc/vigor/vigor.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# product
PRODUCT_DEVICE := vigor
PRODUCT_BRAND := htc
PRODUCT_NAME := liquid_vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.vigor.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=4.05.605.14 \
    PRODUCT_NAME=vigor \
    TARGET_DEVICE=vigor \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="4.05.605.14 CL570011 release-keys" \
    BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/570011.14:user/release-keys"
