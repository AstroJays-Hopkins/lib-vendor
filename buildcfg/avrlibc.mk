############################
#     AVRLIBC config       #
############################

LIB             := avrlibc
VENDOR_INCLUDES += -isystem $(LIBROOT)/$(LIB)/include
VENDOR_LDLIBS   += -B$(LIBROOT)/$(LIB)/lib
