################################################################################
#
# ANBOX
#
################################################################################
# Version.: Commits on Jul 29, 2020
ANBOX_VERSION = 4d84370b73852e5ca755a28d0304c4d7d0aa589c
ANBOX_SITE = https://github.com/anbox/anbox.git
ANBOX_SITE_METHOD=git
ANBOX_GIT_SUBMODULES=YES
ANBOX_LICENSE = GPLv2
ANBOX_DEPENDENCIES = boost protobuf sdl2_image lxc properties-cpp glm

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
ANBOX_SUPPORTS_IN_SOURCE_BUILD = NO

ANBOX_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release

$(eval $(cmake-package))
