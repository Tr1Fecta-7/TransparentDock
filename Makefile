FINALPACKAGE = 1
PACKAGE_VERSION = 1.0

include $(THEOS)/makefiles/common.mk

ARCHS = arm64 arm64e

TWEAK_NAME = TransparentDock

TransparentDock_FILES = Tweak.xm
TransparentDock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
