################################################################################
#
# psplash
#
################################################################################

PSPLASH_VERSION = 923686d27061d496b70514a4eb645e2c6a31fa8e
PSPLASH_SITE_METHOD = git
PSPLASH_SITE = https://github.com/ghetzel/psplash.git
PSPLASH_LICENSE = GPLv2+
PSPLASH_AUTORECONF = YES

$(eval $(autotools-package))
