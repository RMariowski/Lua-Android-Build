LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -O2 -Wall -DLUA_COMPAT_ALL -D"getlocaledecpoint() ='.'" -fsigned-char

SRC_FILES := $(wildcard $(LOCAL_PATH)/../../lua/src/*.c)
SRC_FILES := $(SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES := $(SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../lua/src/

LOCAL_MODULE := liblua

include $(BUILD_STATIC_LIBRARY)
