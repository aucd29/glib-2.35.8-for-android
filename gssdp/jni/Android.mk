#
# libgssdp
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libgssdp


LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../../libxml2/include \
	$(LOCAL_PATH)/../../libxml2/include/libxml \
	$(LOCAL_PATH)/../../glib-2.35.8/ \
	$(LOCAL_PATH)/../../glib-2.35.8/android \
	$(LOCAL_PATH)/../../glib-2.35.8/glib \
	$(LOCAL_PATH)/../../glib-2.35.8/gmodule \
	$(LOCAL_PATH)/../../glib-2.35.8/gobject \
	$(LOCAL_PATH)/../../glib-2.35.8/gio \
	$(LOCAL_PATH)/../../libsoup \
	$(LOCAL_PATH)/../../libsoup/libsoup \
	$(LOCAL_PATH)/../../dhcpcd \
	$(LOCAL_PATH)/../../core/include

LOCAL_CFLAGS := \
	-Wall \
	-DHAVE_CONFIG_H \
	-DGLIB_COMPILATION

local_src_files := \
	gssdp-client.c \
	gssdp-error.c \
	gssdp-resource-browser.c \
	gssdp-resource-group.c \
	gssdp-socket-source.c \
	gssdp-socket-functions.c \
	gssdp-marshal.c

LOCAL_SRC_FILES := \
	../../dhcpcd/ifaddrs.c \
	$(addprefix ../libgssdp/, $(local_src_files))

local_static_libs = \
	glib-2.0.a \
	gobject-2.0.a \
	gio-2.0.a \
	libsoap.a

LOCAL_LDLIBS := \
	-L../../libs \
	-lsqlite3 \
	-lnetutils \
	-llog \
	$(addprefix ../../libs/, $local_static_libs))

include $(BUILD_STATIC_LIBRARY)

#
# DUMY
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libgssdp-shared
LOCAL_STATIC_LIBRARIES := libgssdp

include $(BUILD_SHARED_LIBRARY)

