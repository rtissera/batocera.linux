################################################################################
#
# LIBRETRO-FLYCAST
#
################################################################################
# Version.: Commits on Sep 2, 2019
LIBRETRO_FLYCAST_VERSION = 446ec553de2d9f90a93220e7af5a8f595be3705e
LIBRETRO_FLYCAST_SITE = $(call github,libretro,flycast,$(LIBRETRO_FLYCAST_VERSION))
LIBRETRO_FLYCAST_LICENSE = GPLv2

LIBRETRO_FLYCAST_PLATFORM = $(LIBRETRO_PLATFORM)
LIBRETRO_FLYCAST_EXTRA_ARGS = HAVE_OPENMP=0

# LIBRETRO_PLATFORM is not good for this core, because
# for rpi, it contains "unix rpi" and this core do an "if unix elif rpi ..."

# special cases for special plateform then...
# an other proper way may be to redo the Makefile to do "if rpi elif unix ..." (from specific to general)
# the Makefile imposes that the platform has gles (or force FORCE_GLES is set) to not link with lGL

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_RPI3),y)
	LIBRETRO_FLYCAST_PLATFORM = rpi3
	LIBRETRO_FLYCAST_EXTRA_ARGS += FORCE_GLES=1 ARCH=arm
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_XU4)$(BR2_PACKAGE_BATOCERA_TARGET_LEGACYXU4),y)
	LIBRETRO_FLYCAST_PLATFORM = odroid
	LIBRETRO_FLYCAST_EXTRA_ARGS += BOARD=ODROID-XU4 FORCE_GLES=1 ARCH=arm
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_ROCKPRO64),y)
	LIBRETRO_FLYCAST_PLATFORM = rockpro64
	LIBRETRO_FLYCAST_EXTRA_ARGS += ARCH=arm
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_ODROIDN2),y)
	LIBRETRO_FLYCAST_PLATFORM = odroid-n2
	LIBRETRO_FLYCAST_EXTRA_ARGS += ARCH=arm
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_TINKERBOARD),y)
	LIBRETRO_FLYCAST_PLATFORM = tinkerboard
	LIBRETRO_FLYCAST_EXTRA_ARGS += ARCH=arm
endif

ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_MIQI),y)
	LIBRETRO_FLYCAST_PLATFORM = tinkerboard
	LIBRETRO_FLYCAST_EXTRA_ARGS += ARCH=arm
endif

define LIBRETRO_FLYCAST_BUILD_CMDS
    CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" AR="$(TARGET_AR)" -C $(@D)/ -f Makefile $(LIBRETRO_FLYCAST_EXTRA_ARGS) platform="$(LIBRETRO_FLYCAST_PLATFORM)"
endef

define LIBRETRO_FLYCAST_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/flycast_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/flycast_libretro.so
endef

$(eval $(generic-package))
