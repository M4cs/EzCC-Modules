include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = iCleanerLauncher
iCleanerLauncher_BUNDLE_EXTENSION = bundle
iCleanerLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
iCleanerLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
iCleanerLauncher_FILES = $(wildcard *.m)
iCleanerLauncher_LDFLAGS += /opt/EzLauncherModules/iCleanerLauncher/Frameworks/ControlCenterUIKit.tbd
iCleanerLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
