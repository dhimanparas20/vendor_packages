LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ShadyQuickStep
LOCAL_SRC_FILES := priv-app/ShadyQuickStep/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Launcher3QuickStep NexusLauncherRelease OnePlusRecentsProvider OPLauncher lawnchair Lawnchair
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ShadyRecentsProvider
LOCAL_SRC_FILES := product/overlay/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := .apk
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
LOCAL_MODULE_PATH := $(TARGET_OUT)/product/overlay
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

#End
