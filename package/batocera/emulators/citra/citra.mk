################################################################################
#
# CITRA
#
################################################################################

CITRA_DEPENDENCIES = fmt boost ffmpeg sdl2
CITRA_SITE_METHOD=git
CITRA_GIT_SUBMODULES=YES
CITRA_LICENSE = GPLv2

# Use citra-android for AArch64 (SDL2 only)
# Version Aug, 16 2020
ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_ODROIDN2)$(BR2_PACKAGE_BATOCERA_TARGET_VIM3),y)
CITRA_VERSION = 875b1fb0d8518a47cbb885d19e1f4922747003d1
CITRA_SITE = https://github.com/citra-emu/citra-android.git
CITRA_CONF_OPTS += -DENABLE_QT=OFF

# Use citra for x86_64 and enable citra-qt
# Version Aug, 29 2020
else
CITRA_VERSION = a5fd11c213b374b47b07f4fa445a297da881fce7
CITRA_SITE = https://github.com/citra-emu/citra.git
CITRA_CONF_OPTS += -DENABLE_QT=ON
CITRA_CONF_OPTS += -DENABLE_QT_TRANSLATION=ON
CITRA_CONF_OPTS += -DARCHITECTURE=x86_64
CITRA_DEPENDENCIES += qt5base qt5tools qt5multimedia
endif

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
CITRA_SUPPORTS_IN_SOURCE_BUILD = NO

CITRA_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
CITRA_CONF_OPTS += -DENABLE_WEB_SERVICE=OFF
CITRA_CONF_OPTS += -DENABLE_FFMPEG=ON
CITRA_CONF_OPTS += -DBUILD_SHARED_LIBS=FALSE

CITRA_CONF_ENV += LDFLAGS=-lpthread

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_X86_64),y)
define CITRA_INSTALL_TARGET_CMDS
       	mkdir -p $(TARGET_DIR)/usr/bin
        mkdir -p $(TARGET_DIR)/usr/lib
	$(INSTALL) -D $(@D)/buildroot-build/bin/Release/citra-qt \
		$(TARGET_DIR)/usr/bin/
	$(INSTALL) -D $(@D)/buildroot-build/bin/Release/citra \
		$(TARGET_DIR)/usr/bin/
endef
else
define CITRA_INSTALL_TARGET_CMDS
        mkdir -p $(TARGET_DIR)/usr/bin
        mkdir -p $(TARGET_DIR)/usr/lib

	$(INSTALL) -D $(@D)/buildroot-build/bin/Release/citra \
		$(TARGET_DIR)/usr/bin/
endef
endif

$(eval $(cmake-package))
