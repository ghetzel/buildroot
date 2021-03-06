################################################################################
#
<<<<<<< HEAD
# qt5websockets
=======
# qt5serialport
>>>>>>> qt5.3-beta
#
################################################################################

QT5WEBSOCKETS_VERSION = $(QT5_VERSION)
QT5WEBSOCKETS_SITE = $(QT5_SITE)
QT5WEBSOCKETS_SOURCE = qtwebsockets-opensource-src-$(QT5WEBSOCKETS_VERSION).tar.xz
QT5WEBSOCKETS_DEPENDENCIES = qt5base
QT5WEBSOCKETS_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_QT5BASE_LICENSE_APPROVED),y)
QT5WEBSOCKETS_LICENSE = LGPLv2.1 or GPLv3.0
QT5WEBSOCKETS_LICENSE_FILES = LICENSE.GPL LICENSE.LGPL LGPL_EXCEPTION.txt
else
QT5WEBSOCKETS_LICENSE = Commercial license
QT5WEBSOCKETS_REDISTRIBUTE = NO
endif

define QT5WEBSOCKETS_CONFIGURE_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/qmake)
endef

define QT5WEBSOCKETS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QT5WEBSOCKETS_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install
	$(QT5_LA_PRL_FILES_FIXUP)
endef

ifeq ($(BR2_PREFER_STATIC_LIB),)
define QT5WEBSOCKETS_INSTALL_TARGET_CMDS
	cp -dpf $(STAGING_DIR)/usr/lib/libQt5WebSockets.so.* $(TARGET_DIR)/usr/lib
endef
endif

$(eval $(generic-package))
