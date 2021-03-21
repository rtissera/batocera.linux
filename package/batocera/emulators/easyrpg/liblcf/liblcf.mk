################################################################################
#
# LIBLCF
#
################################################################################
# Version.: Release on Apr 27, 2020
LIBLCF_VERSION = 0.6.2
LIBLCF_DEPENDENCIES = expat icu
LIBLCF_LICENSE = MIT
LIBLCF_SITE = $(call github,EasyRPG,liblcf,$(LIBLCF_VERSION))

LIBLCF_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release

LIBLCF_CONF_OPTS += -DCMAKE_C_ARCHIVE_CREATE="<CMAKE_AR> qcs <TARGET> <LINK_FLAGS> <OBJECTS>"
LIBLCF_CONF_OPTS += -DCMAKE_C_ARCHIVE_FINISH=true
LIBLCF_CONF_OPTS += -DCMAKE_CXX_ARCHIVE_CREATE="<CMAKE_AR> qcs <TARGET> <LINK_FLAGS> <OBJECTS>"
LIBLCF_CONF_OPTS += -DCMAKE_CXX_ARCHIVE_FINISH=true
LIBLCF_CONF_OPTS += -DCMAKE_AR="$(TARGET_CC)-ar"
LIBLCF_CONF_OPTS += -DCMAKE_C_COMPILER="$(TARGET_CC)"
LIBLCF_CONF_OPTS += -DCMAKE_CXX_COMPILER="$(TARGET_CXX)"
LIBLCF_CONF_OPTS += -DCMAKE_LINKER="$(TARGET_LD)"
LIBLCF_CONF_OPTS += -DCMAKE_C_FLAGS="$(COMPILER_COMMONS_CFLAGS_SO)"
LIBLCF_CONF_OPTS += -DCMAKE_CXX_FLAGS="$(COMPILER_COMMONS_CXXFLAGS_SO)"
LIBLCF_CONF_OPTS += -DCMAKE_LINKER_EXE_FLAGS="$(COMPILER_COMMONS_LDFLAGS_SO)"
LIBLCF_CONF_ENV += LDFLAGS="-lpthread -fPIC" CFLAGS="-fPIC" CXXFLAGS="-fPIC"

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
LIBLCF_SUPPORTS_IN_SOURCE_BUILD = NO

# We need staging install for player cmake build
LIBLCF_INSTALL_STAGING = YES

$(eval $(cmake-package))
