include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CocoatopLauncher
CocoatopLauncher_BUNDLE_EXTENSION = bundle
CocoatopLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
CocoatopLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
CocoatopLauncher_FILES = $(wildcard *.m)
CocoatopLauncher_LDFLAGS += /opt/EzLauncherModules/CocoatopLauncher/Frameworks/ControlCenterUIKit.tbd
CocoatopLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
