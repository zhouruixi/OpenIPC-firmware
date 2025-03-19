################################################################################
#
# digitalfpv-shell-drone
#
################################################################################

DIGITALFPV_SHELL_DRONE_VERSION =
DIGITALFPV_SHELL_DRONE_SITE =
DIGITALFPV_SHELL_DRONE_LICENSE =

define DIGITALFPV_SHELL_DRONE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(DIGITALFPV_SHELL_DRONE_PKGDIR)/files/S99digitalfpv_shell_drone

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(DIGITALFPV_SHELL_DRONE_PKGDIR)/files/shell_drone
endef

$(eval $(generic-package))
