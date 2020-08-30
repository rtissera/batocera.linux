################################################################################
#
# ANBOX
#
################################################################################
# Version.: Commits on Aug 21, 2020
ANBOX_VERSION = c1e75506bad0c479c8591970ce422aa8646654ac
ANBOX_SITE = https://github.com/anbox/anbox.git
ANBOX_SITE_METHOD=git
ANBOX_GIT_SUBMODULES=YES
ANBOX_LICENSE = GPLv2
ANBOX_DEPENDENCIES = boost protobuf sdl2_image lxc properties-cpp glm libcap expat host-expat

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
ANBOX_SUPPORTS_IN_SOURCE_BUILD = NO

ANBOX_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release

$(eval $(cmake-package))
