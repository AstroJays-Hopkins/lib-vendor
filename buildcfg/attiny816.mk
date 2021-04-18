############################
#   Device Def Makefile    #
############################
# Must include:
# UC_FLAGS - specifies which mcu
# UC_INCLUDES - where to get headers
# UC_LIBS - stuff passed to the linker for linking
# DO NOT OVERWRITE; you should append "+=" instead

DEV                 := attiny816
DEV_FAMILY          := avrxmega3
VENDOR_USE_LDSCRIPT := yes 

include $(LIBROOT)/buildcfg/attiny-common.mk
