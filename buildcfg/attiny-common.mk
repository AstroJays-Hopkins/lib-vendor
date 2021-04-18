####################################
#   ATTINY Pack Common Makefile    #
####################################
DEVKIT          := dfp_attiny

VENDOR_UC_FLAGS := -mmcu=$(DEV) -B$(LIBROOT)/$(DEVKIT)/dev/$(DEV)/
VENDOR_CFLAGS   += $(VENDOR_UC_FLAGS)
VENDOR_INCLUDES += -I$(LIBROOT)/$(DEVKIT)/include
VENDOR_LDFLAGS  += $(VENDOR_UC_FLAGS)
VENDOR_LDLIBS   += -B$(LIBROOT)/$(DEVKIT)/dev/$(DEV)/ -B$(LIBROOT)/$(DEVKIT)/lib/
ifdef VENDOR_USE_LDSCRIPT
	VENDOR_LDFLAGS += -Wl,-script=$(LIBROOT)/$(DEVKIT)/ldscripts/$(DEV_FAMILY).xn
endif

include $(LIBROOT)/buildcfg/avrlibc.mk

