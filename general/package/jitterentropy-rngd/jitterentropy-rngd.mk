################################################################################
#
# jitterentropy-rngd (local version)
#
################################################################################

JITTERENTROPY_RNGD_SITE_METHOD = git
JITTERENTROPY_RNGD_SITE = https://github.com/smuellerDD/jitterentropy-rngd.git
JITTERENTROPY_RNGD_VERSION = HEAD

JITTERENTROPY_RNGD_LICENSE = GPL-2.0
JITTERENTROPY_RNGD_LICENSE_FILES = COPYING

JITTERENTROPY_RNGD_DEPENDENCIES = jitterentropy-library

JITTERENTROPY_RNGD_AUTORECONF = YES
JITTERENTROPY_RNGD_CONF_OPTS = --enable-static=no

define JITTERENTROPY_RNGD_BUILD_CMDS
	$(TARGET_CC) $(@D)/jitterentropy-rngd.c -o $(@D)/jitterentropy-rngd -ljitterentropy -Wall
endef

define JITTERENTROPY_RNGD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/jitterentropy-rngd $(TARGET_DIR)/usr/sbin/jitterentropy-rngd
	$(INSTALL) -D -m 755 $(JITTERENTROPY_RNGD_PKGDIR)/files/S99jitterentropy $(TARGET_DIR)/etc/init.d/S99jitterentropy
endef

$(eval $(generic-package))
