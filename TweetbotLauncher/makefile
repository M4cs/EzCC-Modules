include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TweetbotLauncher
TweetbotLauncher_BUNDLE_EXTENSION = bundle
TweetbotLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
TweetbotLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
TweetbotLauncher_FILES = $(wildcard *.m)
TweetbotLauncher_LDFLAGS += /opt/EzLauncherModules/TweetbotLauncher/Frameworks/ControlCenterUIKit.tbd
TweetbotLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
