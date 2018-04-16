include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DashlaneLauncher
DashlaneLauncher_BUNDLE_EXTENSION = bundle
DashlaneLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
DashlaneLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
DashlaneLauncher_FILES = $(wildcard *.m)
DashlaneLauncher_LDFLAGS += /opt/EzLauncherModules/DashlaneLauncher/Frameworks/ControlCenterUIKit.tbd
DashlaneLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
