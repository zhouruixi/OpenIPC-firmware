################################################################################
#
# digitalfpv-mavfwd
#
################################################################################

DIGITALFPV_MAVFWD_VERSION =
DIGITALFPV_MAVFWD_SITE =
DIGITALFPV_MAVFWD_LICENSE =

DIGITALFPV_MAVFWD_DEPENDENCIES = libevent-openipc

define DIGITALFPV_MAVFWD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/sbin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/sbin $(MAVFWD_PKGDIR)/files/channels.sh
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/sbin $(DIGITALFPV_MAVFWD_PKGDIR)/files/mavfwd
endef

$(eval $(generic-package))
