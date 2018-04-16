include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RedditLauncher
RedditLauncher_BUNDLE_EXTENSION = bundle
RedditLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
RedditLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
RedditLauncher_FILES = $(wildcard *.m)
RedditLauncher_LDFLAGS += /opt/EzLauncherModules/RedditLauncher/Frameworks/ControlCenterUIKit.tbd
RedditLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
