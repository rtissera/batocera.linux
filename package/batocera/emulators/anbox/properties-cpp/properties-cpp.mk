################################################################################
#
# PROPERTIES_CPP
#
################################################################################
# Version.: Commits on Apr 9, 2018
PROPERTIES_CPP_VERSION = 45863e849b39c4921d6553e6d27e267a96ac7d77
PROPERTIES_CPP_SITE = https://github.com/lib-cpp/properties-cpp.git
PROPERTIES_CPP_SITE_METHOD=git
PROPERTIES_CPP_GIT_SUBMODULES=YES
PROPERTIES_CPP_LICENSE = LGPL-3.0

# Should be set when the package cannot be built inside the source tree but needs a separate build directory.
PROPERTIES_CPP_SUPPORTS_IN_SOURCE_BUILD = NO

PROPERTIES_CPP_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
PROPERTIES_CPP_CONF_OPTS += -DPROPERTIES_CPP_ENABLE_DOC_GENERATION=OFF

PROPERTIES_CPP_INSTALL_STAGING = YES

$(eval $(cmake-package))
