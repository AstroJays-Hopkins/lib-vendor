#########################################
# ATDAMD51 Packs Common Make Components #
#########################################
DEVKIT := dfp_atsamd51

VENDOR_UC_FLAGS := -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D$(DEV_FLAG)
VENDOR_CFLAGS   += $(VENDOR_UC_FLAGS)
VENDOR_INCLUDES += -I$(LIBROOT)/$(DEVKIT)/include -I$(LIBROOT)/arm-cmsis/include
VENDOR_LDFLAGS  += $(VENDOR_UC_FLAGS) -L$(LIBROOT)/$(DEVKIT)/lib \
                   -T$(LIBROOT)/$(DEVKIT)/ldscripts/$(DEV)_flash.ld \
                   $(LIBROOT)/$(DEVKIT)/ldscripts/newlib_compat.ld \
                   -L$(LIBROOT)/arm-cmsis/lib
# whole archive needed to get the exception table to link
VENDOR_LDLIBS   += -Wl,--whole-archive -l$(DEV) -Wl,--no-whole-archive -larm_cortexM4lf_math -lm
