LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
#LOCAL_MODULE := test-browser
LOCAL_MODULE := test-publish
LOCAL_CFLAGS := \
	-DGLIB_COMPILATION

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../.. \
	$(LOCAL_PATH)/../../libgssdp \
	$(LOCAL_PATH)/../../../glib-2.35.8/ \
	$(LOCAL_PATH)/../../../glib-2.35.8/android \
	$(LOCAL_PATH)/../../../glib-2.35.8/glib \
	$(LOCAL_PATH)/../../../glib-2.35.8/gmodule \
	$(LOCAL_PATH)/../../../glib-2.35.8/gobject \
	$(LOCAL_PATH)/../../../glib-2.35.8/gio \
	$(LOCAL_PATH)/../../../libsoup \
	$(LOCAL_PATH)/../../../libsoup/libsoup

#LOCAL_SRC_FILES := ../test-browser.c
LOCAL_SRC_FILES := ../test-publish.c

libs := \
	libgssdp.a \
	libsoap.a \
	libgio-2.0.a \
	libgmodule-2.0.a \
	libgobject-2.0.a \
	libglib-2.0.a \
	libpcre.a \
	libpcreposix.a \
	libffi.a

LOCAL_LDLIBS := \
	-L$(LOCAL_PATH)/../../../libs \
	-lnetutils \
	-ldl \
	-llog \
	$(addprefix $(LOCAL_PATH)/../../../libs/, $(libs))

include $(BUILD_EXECUTABLE)

