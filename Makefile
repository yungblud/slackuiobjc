ARCHS = armv7 arm64
include /var/theos/makefiles/common.mk

APPLICATION_NAME = theostest
theostest_FILES = main.m theostestApplication.mm RootViewController.mm SecondViewController.mm
theostest_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "uicache"