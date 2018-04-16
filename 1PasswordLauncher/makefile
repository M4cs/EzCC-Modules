include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = 1PasswordLauncher
1PasswordLauncher_BUNDLE_EXTENSION = bundle
1PasswordLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
1PasswordLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
1PasswordLauncher_FILES = $(wildcard *.m)
1PasswordLauncher_LDFLAGS += /opt/EzLauncherModules/1PasswordLauncher/Frameworks/ControlCenterUIKit.tbd
1PasswordLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
