############################
#   Device Def Makefile    #
############################
# Must include:
# UC_FLAGS - specifies which mcu
# UC_INCLUDES - where to get headers
# UC_LIBS - stuff passed to the linker for linking
# DO NOT OVERWRITE; you should append "+=" instead

DEV      := samd21g18a
DEV_FLAG := __ATSAMD21G18A__
SERIES   := a

include $(LIBROOT)/buildcfg/samd21-common.mk 
