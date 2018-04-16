include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LastpassLauncher
LastpassLauncher_BUNDLE_EXTENSION = bundle
LastpassLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
LastpassLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
LastpassLauncher_FILES = $(wildcard *.m)
LastpassLauncher_LDFLAGS += /opt/EzLauncherModules/LastpassLauncher/Frameworks/ControlCenterUIKit.tbd
LastpassLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
