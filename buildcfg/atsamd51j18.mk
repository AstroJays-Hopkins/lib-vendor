############################
#   Device Def Makefile    #
############################
# Must include:
# UC_FLAGS - specifies which mcu
# UC_INCLUDES - where to get headers
# UC_LIBS - stuff passed to the linker for linking
# DO NOT OVERWRITE; you should append "+=" instead

DEV      := samd51j18a
DEV_FLAG := __ATSAMD51G18A__

include $(LIBROOT)/buildcfg/samd51-common.mk 
