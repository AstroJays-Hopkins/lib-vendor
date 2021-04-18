#########################################
# ATDAMD51 Packs Common Make Components #
#########################################
DEVKIT := dfp_atsamd21

VENDOR_UC_FLAGS := -mcpu=cortex-m0plus -mthumb -D$(DEV_FLAG)
VENDOR_CFLAGS   += $(VENDOR_UC_FLAGS)
VENDOR_INCLUDES += -I$(LIBROOT)/arm-cmsis/include \
		   -I$(LIBROOT)/$(DEVKIT)/samd21$(SERIES)/include
VENDOR_LDFLAGS  += $(VENDOR_UC_FLAGS) \
                   -T$(LIBROOT)/$(DEVKIT)/samd21$(SERIES)/ldscripts/$(DEV)_flash.ld \
                   $(LIBROOT)/$(DEVKIT)/samd21$(SERIES)/ldscripts/newlib_compat.ld \
                   -L$(LIBROOT)/$(DEVKIT)/samd21$(SERIES)/lib -L$(LIBROOT)/arm-cmsis/lib
# whole archive needed to get the exception table to link
VENDOR_LDLIBS   += -Wl,--whole-archive -l$(DEV) -Wl,--no-whole-archive -lm
