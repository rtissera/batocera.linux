################################################################################
#
# Hypseus is a fork of Daphne
#
################################################################################
# Version.: Release on Feb 26, 2021
DAPHNE_VERSION = v1.3.0
DAPHNE_SITE = https://github.com/btolab/hypseus.git
DAPHNE_SITE_METHOD=git
DAPHNE_LICENSE = GPLv3
DAPHNE_DEPENDENCIES = sdl2 sdl2_image sdl2_ttf zlib libogg libvorbis libmpeg2

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
DAPHNE_SUBDIR = build
DAPHNE_CONF_OPTS = ../src -DBUILD_SHARED_LIBS=OFF

define DAPHNE_HYPINPUT_LINK
	ln -fs /userdata/system/configs/daphne/hypinput.ini $(TARGET_DIR)/usr/share/daphne/hypinput.ini
endef

DAPHNE_CONF_OPTS += -DCMAKE_C_ARCHIVE_CREATE="<CMAKE_AR> qcs <TARGET> <LINK_FLAGS> <OBJECTS>"
DAPHNE_CONF_OPTS += -DCMAKE_C_ARCHIVE_FINISH=true
DAPHNE_CONF_OPTS += -DCMAKE_CXX_ARCHIVE_CREATE="<CMAKE_AR> qcs <TARGET> <LINK_FLAGS> <OBJECTS>"
DAPHNE_CONF_OPTS += -DCMAKE_CXX_ARCHIVE_FINISH=true
DAPHNE_CONF_OPTS += -DCMAKE_AR="$(TARGET_CC)-ar"
DAPHNE_CONF_OPTS += -DCMAKE_C_COMPILER="$(TARGET_CC)"
DAPHNE_CONF_OPTS += -DCMAKE_CXX_COMPILER="$(TARGET_CXX)"
DAPHNE_CONF_OPTS += -DCMAKE_LINKER="$(TARGET_LD)"
DAPHNE_CONF_OPTS += -DCMAKE_C_FLAGS="$(COMPILER_COMMONS_CFLAGS_EXE)"
DAPHNE_CONF_OPTS += -DCMAKE_CXX_FLAGS="$(COMPILER_COMMONS_CXXFLAGS_EXE)"
DAPHNE_CONF_OPTS += -DCMAKE_LINKER_EXE_FLAGS="$(COMPILER_COMMONS_LDFLAGS_EXE)"

DAPHNE_POST_INSTALL_TARGET_HOOKS = DAPHNE_HYPINPUT_LINK

$(eval $(cmake-package))
