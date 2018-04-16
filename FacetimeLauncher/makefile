include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = FacetimeLauncher
FacetimeLauncher_BUNDLE_EXTENSION = bundle
FacetimeLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
FacetimeLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
FacetimeLauncher_FILES = $(wildcard *.m)
FacetimeLauncher_LDFLAGS += /opt/EzLauncherModules/FacetimeLauncher/Frameworks/ControlCenterUIKit.tbd
FacetimeLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
