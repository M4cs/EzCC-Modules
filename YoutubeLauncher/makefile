include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = YoutubeLauncher
YoutubeLauncher_BUNDLE_EXTENSION = bundle
YoutubeLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
YoutubeLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
YoutubeLauncher_FILES = $(wildcard *.m)
YoutubeLauncher_LDFLAGS += /opt/EzLauncherModules/YoutubeLauncher/Frameworks/ControlCenterUIKit.tbd
YoutubeLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
