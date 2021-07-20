#
# Copyright (C) 2019-2020 Asus-SDM660
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

LOCAL_PATH := $(call my-dir)

# Include Makefiles from all sub-directories
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Prebuilt
PRODUCT_PACKAGES += \
    PrebuiltGoogleSounds \
    GCam \
    Gboard \
    AsusCalculator

# RemovePackages
PRODUCT_PACKAGES += \
    RemovePackages

# Copy permission files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/packages/shadylauncher/etc,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc)

# Shady Launcher
PRODUCT_PACKAGES += \
    ShadyQuickStep \
    ShadyRecentsProvider
