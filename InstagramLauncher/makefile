include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = InstagramLauncher
InstagramLauncher_BUNDLE_EXTENSION = bundle
InstagramLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
InstagramLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
InstagramLauncher_FILES = $(wildcard *.m)
InstagramLauncher_LDFLAGS += /opt/EzLauncherModules/InstagramLauncher/Frameworks/ControlCenterUIKit.tbd
InstagramLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
