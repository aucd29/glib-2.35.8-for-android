LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    gboxed.c                \
    genums.c                \
    gparam.c                \
    gsignal.c               \
    gtypemodule.c           \
    gtypeplugin.c           \
    gvalue.c                \
    gvaluetypes.c           \
    gclosure.c              \
    gobject.c               \
    gparamspecs.c           \
    gtype.c                 \
    gvaluearray.c           \
    gvaluetransform.c       \
    gatomicarray.c          \
    gsourceclosure.c \
	gmarshal.c

LOCAL_STATIC_LIBRARIES := \
	libglib-2.0 \
	libgthread-2.0

LOCAL_MODULE:= libgobject-2.0

LOCAL_C_INCLUDES := 		\
	$(LOCAL_PATH)		\
	$(GLIB_TOP)		\
	$(GLIB_TOP)/android	\
	$(GLIB_TOP)/glib \
	$(GLIB_TOP)/../libffi-android/include \
	$(GLIB_TOP)/../libffi-android/linux-arm \
	$(LOCAL_PATH)/../../zlib

LOCAL_LDLIBS := \
	-L$(LOCAL_PATH)/../../libs \
	libffi.a \
	-lz -ldl

LOCAL_CFLAGS := \
    -DG_LOG_DOMAIN=\"GLib-GObject\" \
    -DGOBJECT_COMPILATION           \
    -DG_DISABLE_CONST_RETURNS       \
    -DG_DISABLE_DEPRECATED \
	-DGLIB_COMPILATION=1

include $(BUILD_STATIC_LIBRARY)

#################
# DUMY
#################

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= libgobject-2.0-shared
LOCAL_STATIC_LIBRARIES := \
	libgobject-2.0

include $(BUILD_SHARED_LIBRARY)
