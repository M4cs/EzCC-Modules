include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SpotifyLauncher
SpotifyLauncher_BUNDLE_EXTENSION = bundle
SpotifyLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
SpotifyLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
SpotifyLauncher_FILES = $(wildcard *.m)
SpotifyLauncher_LDFLAGS += /opt/EzLauncherModules/SpotifyLauncher/Frameworks/ControlCenterUIKit.tbd
SpotifyLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
