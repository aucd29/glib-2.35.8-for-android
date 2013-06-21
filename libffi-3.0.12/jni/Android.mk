LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libffi
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../linux-arm

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../src/arm/sysv.S \
	$(LOCAL_PATH)/../src/arm/ffi.c \
	$(LOCAL_PATH)/../src/debug.c \
	$(LOCAL_PATH)/../src/java_raw_api.c \
	$(LOCAL_PATH)/../src/prep_cif.c \
	$(LOCAL_PATH)/../src/raw_api.c \
	$(LOCAL_PATH)/../src/types.c

include $(BUILD_STATIC_LIBRARY)

#
# DUMY
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := libffi-shared
LOCAL_STATIC_LIBRARIES := libffi
include $(BUILD_SHARED_LIBRARY)
