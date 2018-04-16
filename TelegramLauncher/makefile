include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TelegramLauncher
TelegramLauncher_BUNDLE_EXTENSION = bundle
TelegramLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
TelegramLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
TelegramLauncher_FILES = $(wildcard *.m)
TelegramLauncher_LDFLAGS += /opt/EzLauncherModules/TelegramLauncher/Frameworks/ControlCenterUIKit.tbd
TelegramLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
