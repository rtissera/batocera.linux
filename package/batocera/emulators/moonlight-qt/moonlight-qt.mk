################################################################################
#
# moonlight-qt
#
################################################################################
# Version.: Version on May 8, 2021
MOONLIGHT_QT_VERSION = v3.13
MOONLIGHT_QT_SITE = https://github.com/moonlight-stream/moonlight-qt.git
MOONLIGHT_QT_SITE_METHOD = git
MOONLIGHT_QT_GIT_SUBMODULES=y
MOONLIGHT_QT_LICENSE = GPLv3
MOONLIGHT_QT_DEPENDENCIES = opus expat libevdev avahi alsa-lib udev libcurl libcec ffmpeg sdl2 libenet

MOONLIGHT_QT_CONF_OPTS = "-DCMAKE_INSTALL_SYSCONFDIR=/etc"

ifeq ($(BR2_PACKAGE_RPI_USERLAND),y)
	MOONLIGHT_QT_DEPENDENCIES += rpi-userland
endif

#MOONLIGHT_QT_POST_INSTALL_TARGET_HOOKS += MOONLIGHT_QT_INSTALL_SCRIPTS

$(eval $(cmake-package))
