LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libsoap
local_c_includes := \
	../ \
	../libsoup \
	../../icu4c/common \
	../../libxml2/include \
	../../libxml2/include/libxml \
	../../glib-2.35.8/ \
	../../glib-2.35.8/android \
	../../glib-2.35.8/glib \
	../../glib-2.35.8/gmodule \
	../../glib-2.35.8/gobject \
	../../glib-2.35.8/gio \
	../../sqlite3

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(addprefix $(LOCAL_PATH)/, $(local_c_includes))

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-Wall \
	-Wstrict-prototypes \
	-Werror=missing-prototypes \
	-Werror=implicit-function-declaration \
	-Werror=pointer-arith \
	-Werror=init-self \
	-Werror=format=2 \
	-Werror=missing-include-dirs \
	-Werror=aggregate-return \
	-Werror=declaration-after-statement

local_src_files:= \
	soup-address.c			\
	soup-auth.c			\
	soup-auth-basic.c		\
	soup-auth-digest.c		\
	soup-auth-ntlm.c		\
	soup-auth-domain.c		\
	soup-auth-domain-basic.c	\
	soup-auth-domain-digest.c	\
	soup-auth-manager.c		\
	soup-body-input-stream.c	\
	soup-body-output-stream.c	\
	soup-cache.c			\
	soup-cache-input-stream.c	\
	soup-client-input-stream.c	\
	soup-connection.c		\
	soup-connection-auth.c		\
	soup-content-decoder.c		\
	soup-content-processor.c	\
	soup-content-sniffer.c		\
	soup-content-sniffer-stream.c	\
	soup-converter-wrapper.c	\
	soup-cookie.c			\
	soup-cookie-jar.c		\
	soup-cookie-jar-db.c		\
	soup-cookie-jar-text.c		\
	soup-date.c			\
	soup-directory-input-stream.c	\
	soup-enum-types.c		\
	soup-filter-input-stream.c	\
	soup-form.c			\
	soup-headers.c			\
	soup-io-stream.c		\
	soup-logger.c			\
	soup-marshal.c			\
	soup-message.c			\
	soup-message-body.c		\
	soup-message-client-io.c	\
	soup-message-headers.c		\
	soup-message-io.c		\
	soup-message-queue.c		\
	soup-message-server-io.c	\
	soup-method.c     		\
	soup-misc.c     		\
	soup-multipart.c	     	\
	soup-multipart-input-stream.c	\
	soup-password-manager.c		\
	soup-path-map.c     		\
	soup-proxy-resolver.c		\
	soup-proxy-resolver-default.c	\
	soup-proxy-resolver-static.c	\
	soup-proxy-uri-resolver.c	\
	soup-request.c			\
	soup-request-data.c		\
	soup-request-file.c		\
	soup-request-http.c		\
	soup-requester.c		\
	soup-server.c			\
	soup-session.c			\
	soup-session-async.c		\
	soup-session-feature.c		\
	soup-session-sync.c		\
	soup-socket.c			\
	soup-status.c			\
	soup-tld.c			\
	soup-uri.c			\
	soup-value-utils.c		\
	soup-version.c			\
	soup-xmlrpc.c

LOCAL_SRC_FILES := \
	$(addprefix ../libsoup/, $(local_src_files))

LOCAL_LDLIBS := \
	-L../../libs \
	-lsqlite3 \
	../../libs/libxml2.a \
	../../libs/glib-2.0.a \
	../../libs/gobject-2.0.a \
	../../libs/gio-2.0.a

include $(BUILD_STATIC_LIBRARY)

#
# DUMY
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= libsoap-shared
LOCAL_STATIC_LIBRARIES := \
     libsoap

include $(BUILD_SHARED_LIBRARY)
