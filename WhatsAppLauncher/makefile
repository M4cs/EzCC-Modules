include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WhatsAppLauncher
WhatsAppLauncher_BUNDLE_EXTENSION = bundle
WhatsAppLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
WhatsAppLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
WhatsAppLauncher_FILES = $(wildcard *.m)
WhatsAppLauncher_LDFLAGS += /opt/EzLauncherModules/WhatsAppLauncher/Frameworks/ControlCenterUIKit.tbd
WhatsAppLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
