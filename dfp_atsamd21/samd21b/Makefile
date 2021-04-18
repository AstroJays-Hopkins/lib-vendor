CC      := arm-none-eabi-gcc
AR	:= arm-none-eabi-gcc-ar

DEPFLAGS  = -MT $@ -MMD -MP -MF $*.mk
CSTD     := -std=c11
CFLAGS   += -mcpu=cortex-m0plus -mthumb -Os -ffunction-sections -fdata-sections -flto -ffat-lto-objects
INCLUDES  = -I$(LIBROOT)/arm-cmsis/include -Iinclude

# Base commands
CC.C = $(CC) $(CSTD) $(CFLAGS) $(DEPFLAGS) $(INCLUDES)

SRCDIR  := src
BUILDIR := build
LIBDIR  := lib
LIBROOT := ../..
objpath = $(addprefix $(2)/,$(addsuffix .o,$(1)))


OBJS_SAMD21E15B := system_samd21e15b startup_samd21e15b
OBJS_SAMD21E15BU := system_samd21e15bu startup_samd21e15bu
OBJS_SAMD21E16B := system_samd21e16b startup_samd21e16b
OBJS_SAMD21E16BU := system_samd21e16bu startup_samd21e16bu
OBJS_SAMD21G15B := system_samd21g15b startup_samd21g15b
OBJS_SAMD21G16B := system_samd21g16b startup_samd21g16b
OBJS_SAMD21J15B := system_samd21j15b startup_samd21j15b
OBJS_SAMD21J16B := system_samd21j16b startup_samd21j16b
LIBS := libsamd21e15b.a libsamd21e15bu.a libsamd21e16b.a libsamd21e16bu.a \
        libsamd21g15b.a libsamd21g16b.a libsamd21j15b.a libsamd21j16b.a


# compact print enabled by default
ifndef V
	V := 1
endif
P_CC_1 = @echo "  CC       $<";
P_AR_1 = @echo "  AR       $@";


.PHONY: all
all: $(addprefix $(LIBDIR)/,$(LIBS))

.PHONY: clean
clean:
	rm -rf lib/ build/


$(LIBDIR)/libsamd21e15b.a: $(call objpath,$(OBJS_SAMD21E15B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e15bu.a: $(call objpath,$(OBJS_SAMD21E15BU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e16b.a: $(call objpath,$(OBJS_SAMD21E16B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e16bu.a: $(call objpath,$(OBJS_SAMD21E16BU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g15b.a: $(call objpath,$(OBJS_SAMD21G15B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g16b.a: $(call objpath,$(OBJS_SAMD21G16B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j15b.a: $(call objpath,$(OBJS_SAMD21J15B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j16b.a: $(call objpath,$(OBJS_SAMD21J16B),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd21e15b.o: $(SRCDIR)/system_samd21e15b.c $(BUILDIR)/system_samd21e15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15B__ -o $@ -c $<
$(BUILDIR)/startup_samd21e15b.o: $(SRCDIR)/startup_samd21e15b.c $(BUILDIR)/startup_samd21e15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15B__ -o $@ -c $<

$(BUILDIR)/system_samd21e15bu.o: $(SRCDIR)/system_samd21e15bu.c $(BUILDIR)/system_samd21e15bu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15BU__ -o $@ -c $<
$(BUILDIR)/startup_samd21e15bu.o: $(SRCDIR)/startup_samd21e15bu.c $(BUILDIR)/startup_samd21e15bu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15BU__ -o $@ -c $<

$(BUILDIR)/system_samd21e16b.o: $(SRCDIR)/system_samd21e16b.c $(BUILDIR)/system_samd21e16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16B__ -o $@ -c $<
$(BUILDIR)/startup_samd21e16b.o: $(SRCDIR)/startup_samd21e16b.c $(BUILDIR)/startup_samd21e16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16B__ -o $@ -c $<

$(BUILDIR)/system_samd21e16bu.o: $(SRCDIR)/system_samd21e16bu.c $(BUILDIR)/system_samd21e16bu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16BU__ -o $@ -c $<
$(BUILDIR)/startup_samd21e16bu.o: $(SRCDIR)/startup_samd21e16bu.c $(BUILDIR)/startup_samd21e16bu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16BU__ -o $@ -c $<

$(BUILDIR)/system_samd21g15b.o: $(SRCDIR)/system_samd21g15b.c $(BUILDIR)/system_samd21g15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15B__ -o $@ -c $<
$(BUILDIR)/startup_samd21g15b.o: $(SRCDIR)/startup_samd21g15b.c $(BUILDIR)/startup_samd21g15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15B__ -o $@ -c $<

$(BUILDIR)/system_samd21g16b.o: $(SRCDIR)/system_samd21g16b.c $(BUILDIR)/system_samd21g16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16B__ -o $@ -c $<
$(BUILDIR)/startup_samd21g16b.o: $(SRCDIR)/startup_samd21g16b.c $(BUILDIR)/startup_samd21g16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16B__ -o $@ -c $<

$(BUILDIR)/system_samd21j15b.o: $(SRCDIR)/system_samd21j15b.c $(BUILDIR)/system_samd21j15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J15B__ -o $@ -c $<
$(BUILDIR)/startup_samd21j15b.o: $(SRCDIR)/startup_samd21j15b.c $(BUILDIR)/startup_samd21j15b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J15B__ -o $@ -c $<

$(BUILDIR)/system_samd21j16b.o: $(SRCDIR)/system_samd21j16b.c $(BUILDIR)/system_samd21j16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J16B__ -o $@ -c $<
$(BUILDIR)/startup_samd21j16b.o: $(SRCDIR)/startup_samd21j16b.c $(BUILDIR)/startup_samd21j16b.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J16B__ -o $@ -c $<


$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
