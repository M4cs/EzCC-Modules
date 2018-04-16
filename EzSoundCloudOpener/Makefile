include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EzSoundcloudOpener
EzSoundcloudOpener_BUNDLE_EXTENSION = bundle
EzSoundcloudOpener_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
EzSoundcloudOpener_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
EzSoundcloudOpener_FILES = $(wildcard *.m)
EzSoundcloudOpener_LDFLAGS += /opt/projects/EzSoundcloudOpener/Frameworks/ControlCenterUIKit.tbd
EzSoundcloudOpener_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
