include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TwitterLauncher
TwitterLauncher_BUNDLE_EXTENSION = bundle
TwitterLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
TwitterLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
TwitterLauncher_FILES = $(wildcard *.m)
TwitterLauncher_LDFLAGS += /opt/EzLauncherModules/TwitterLauncher/Frameworks/ControlCenterUIKit.tbd
TwitterLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
