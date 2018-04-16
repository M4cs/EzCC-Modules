include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ApolloLauncher
ApolloLauncher_BUNDLE_EXTENSION = bundle
ApolloLauncher_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
ApolloLauncher_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
ApolloLauncher_FILES = $(wildcard *.m)
ApolloLauncher_LDFLAGS += /opt/EzLauncherModules/ApolloLauncher/Frameworks/ControlCenterUIKit.tbd
ApolloLauncher_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
