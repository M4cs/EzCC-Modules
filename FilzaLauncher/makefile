include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = FilzaLauncher
FilzaLauncher_BUNDLE_EXTENSION = bundle
FilzaLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
FilzaLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
FilzaLauncher_FILES = $(wildcard *.m)
FilzaLauncher_LDFLAGS += /opt/EzLauncherModules/FilzaLauncher/Frameworks/ControlCenterUIKit.tbd
FilzaLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
