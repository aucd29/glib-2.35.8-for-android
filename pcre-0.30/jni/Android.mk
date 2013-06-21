# Copyright (C) 2009 The Android Open Source Project
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

include $(CLEAR_VARS)

LOCAL_MODULE    := libpcre
LOCAL_CFLAGS	:= -I. -DHAVE_CONFIG_H
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/.. \

LOCAL_SRC_FILES := \
	../pcre_byte_order.c\
	../pcre_compile.c\
	../pcre_config.c\
	../pcre_dfa_exec.c\
	../pcre_exec.c\
	../pcre_fullinfo.c\
	../pcre_get.c\
	../pcre_globals.c\
	../pcre_jit_compile.c\
	../pcre_maketables.c\
	../pcre_newline.c\
	../pcre_ord2utf8.c\
	../pcre_refcount.c\
	../pcre_string_utils.c\
	../pcre_study.c\
	../pcre_tables.c\
	../pcre_ucd.c\
	../pcre_valid_utf8.c\
	../pcre_version.c\
	../pcre_xclass.c\
	pcre_chartables.c


include $(BUILD_STATIC_LIBRARY)

##

include $(CLEAR_VARS)
LOCAL_MODULE    := libpcreposix
LOCAL_CFLAGS	:= -I. -DHAVE_CONFIG_H
LOCAL_SRC_FILES := ../pcreposix.c
LOCAL_STATIC_LIBRARIES	:= libpcre
include $(BUILD_STATIC_LIBRARY)

##

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := libpcre-shared
LOCAL_STATIC_LIBRARIES := libpcre libpcreposix

include $(BUILD_SHARED_LIBRARY)
