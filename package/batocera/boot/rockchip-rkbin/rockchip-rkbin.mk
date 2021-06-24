################################################################################
#
# rockchip-rkbin
#
################################################################################

ROCKCHIP_RKBIN_VERSION = 7d631e0d5b2d373b54d4533580d08fb9bd2eaad4
ROCKCHIP_RKBIN_SITE = https://github.com/rockchip-linux/rkbin.git
ROCKCHIP_RKBIN_SITE_METHOD=git

define ROCKCHIP_RKBIN_INSTALL_TARGET_CMDS
	mkdir -p $(BINARIES_DIR)/rkbin
	cp -r $(@D)/* $(BINARIES_DIR)/rkbin/
endef

$(eval $(generic-package))
