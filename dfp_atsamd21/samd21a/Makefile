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


OBJS_SAMD21E15A := system_samd21e15a startup_samd21e15a
OBJS_SAMD21E16A := system_samd21e16a startup_samd21e16a
OBJS_SAMD21E17A := system_samd21e17a startup_samd21e17a
OBJS_SAMD21E18A := system_samd21e18a startup_samd21e18a
OBJS_SAMD21G15A := system_samd21g15a startup_samd21g15a
OBJS_SAMD21G16A := system_samd21g16a startup_samd21g16a
OBJS_SAMD21G17A := system_samd21g17a startup_samd21g17a
OBJS_SAMD21G17AU := system_samd21g17au startup_samd21g17au
OBJS_SAMD21G18A := system_samd21g18a startup_samd21g18a
OBJS_SAMD21G18AU := system_samd21g18au startup_samd21g18au
OBJS_SAMD21J15A := system_samd21j15a startup_samd21j15a
OBJS_SAMD21J16A := system_samd21j16a startup_samd21j16a
OBJS_SAMD21J17A := system_samd21j17a startup_samd21j17a
OBJS_SAMD21J18A := system_samd21j18a startup_samd21j18a
LIBS := libsamd21e15a.a libsamd21e16a.a libsamd21e17a.a libsamd21e18a.a libsamd21g15a.a \
	libsamd21g16a.a libsamd21g17a.a libsamd21g17au.a libsamd21g18a.a \
	libsamd21g18au.a libsamd21j15a.a libsamd21j16a.a libsamd21j17a.a libsamd21j18a.a


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


$(LIBDIR)/libsamd21e15a.a: $(call objpath,$(OBJS_SAMD21E15A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e16a.a: $(call objpath,$(OBJS_SAMD21E16A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e17a.a: $(call objpath,$(OBJS_SAMD21E17A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e18a.a: $(call objpath,$(OBJS_SAMD21E18A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g15a.a: $(call objpath,$(OBJS_SAMD21G15A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g16a.a: $(call objpath,$(OBJS_SAMD21G16A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g17a.a: $(call objpath,$(OBJS_SAMD21G17A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g17au.a: $(call objpath,$(OBJS_SAMD21G17AU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g18a.a: $(call objpath,$(OBJS_SAMD21G18A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g18au.a: $(call objpath,$(OBJS_SAMD21G18AU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j15a.a: $(call objpath,$(OBJS_SAMD21J15A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j16a.a: $(call objpath,$(OBJS_SAMD21J16A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j17a.a: $(call objpath,$(OBJS_SAMD21J17A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j18a.a: $(call objpath,$(OBJS_SAMD21J18A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd21e15a.o: $(SRCDIR)/system_samd21e15a.c $(BUILDIR)/system_samd21e15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15A__ -o $@ -c $<
$(BUILDIR)/startup_samd21e15a.o: $(SRCDIR)/startup_samd21e15a.c $(BUILDIR)/startup_samd21e15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15A__ -o $@ -c $<

$(BUILDIR)/system_samd21e16a.o: $(SRCDIR)/system_samd21e16a.c $(BUILDIR)/system_samd21e16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16A__ -o $@ -c $<
$(BUILDIR)/startup_samd21e16a.o: $(SRCDIR)/startup_samd21e16a.c $(BUILDIR)/startup_samd21e16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16A__ -o $@ -c $<

$(BUILDIR)/system_samd21e17a.o: $(SRCDIR)/system_samd21e17a.c $(BUILDIR)/system_samd21e17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17A__ -o $@ -c $<
$(BUILDIR)/startup_samd21e17a.o: $(SRCDIR)/startup_samd21e17a.c $(BUILDIR)/startup_samd21e17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17A__ -o $@ -c $<

$(BUILDIR)/system_samd21e18a.o: $(SRCDIR)/system_samd21e18a.c $(BUILDIR)/system_samd21e18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E18A__ -o $@ -c $<
$(BUILDIR)/startup_samd21e18a.o: $(SRCDIR)/startup_samd21e18a.c $(BUILDIR)/startup_samd21e18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E18A__ -o $@ -c $<

$(BUILDIR)/system_samd21g15a.o: $(SRCDIR)/system_samd21g15a.c $(BUILDIR)/system_samd21g15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15A__ -o $@ -c $<
$(BUILDIR)/startup_samd21g15a.o: $(SRCDIR)/startup_samd21g15a.c $(BUILDIR)/startup_samd21g15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15A__ -o $@ -c $<

$(BUILDIR)/system_samd21g16a.o: $(SRCDIR)/system_samd21g16a.c $(BUILDIR)/system_samd21g16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16A__ -o $@ -c $<
$(BUILDIR)/startup_samd21g16a.o: $(SRCDIR)/startup_samd21g16a.c $(BUILDIR)/startup_samd21g16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16A__ -o $@ -c $<

$(BUILDIR)/system_samd21g17a.o: $(SRCDIR)/system_samd21g17a.c $(BUILDIR)/system_samd21g17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17A__ -o $@ -c $<
$(BUILDIR)/startup_samd21g17a.o: $(SRCDIR)/startup_samd21g17a.c $(BUILDIR)/startup_samd21g17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17A__ -o $@ -c $<

$(BUILDIR)/system_samd21g17au.o: $(SRCDIR)/system_samd21g17au.c $(BUILDIR)/system_samd21g17au.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17AU__ -o $@ -c $<
$(BUILDIR)/startup_samd21g17au.o: $(SRCDIR)/startup_samd21g17au.c $(BUILDIR)/startup_samd21g17au.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17AU__ -o $@ -c $<

$(BUILDIR)/system_samd21g18a.o: $(SRCDIR)/system_samd21g18a.c $(BUILDIR)/system_samd21g18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G18A__ -o $@ -c $<
$(BUILDIR)/startup_samd21g18a.o: $(SRCDIR)/startup_samd21g18a.c $(BUILDIR)/startup_samd21g18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G18A__ -o $@ -c $<

$(BUILDIR)/system_samd21g18au.o: $(SRCDIR)/system_samd21g18au.c $(BUILDIR)/system_samd21g18au.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G18AU__ -o $@ -c $<
$(BUILDIR)/startup_samd21g18au.o: $(SRCDIR)/startup_samd21g18au.c $(BUILDIR)/startup_samd21g18au.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G18AU__ -o $@ -c $<

$(BUILDIR)/system_samd21j15a.o: $(SRCDIR)/system_samd21j15a.c $(BUILDIR)/system_samd21j15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J15A__ -o $@ -c $<
$(BUILDIR)/startup_samd21j15a.o: $(SRCDIR)/startup_samd21j15a.c $(BUILDIR)/startup_samd21j15a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J15A__ -o $@ -c $<

$(BUILDIR)/system_samd21j16a.o: $(SRCDIR)/system_samd21j16a.c $(BUILDIR)/system_samd21j16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J16A__ -o $@ -c $<
$(BUILDIR)/startup_samd21j16a.o: $(SRCDIR)/startup_samd21j16a.c $(BUILDIR)/startup_samd21j16a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J16A__ -o $@ -c $<

$(BUILDIR)/system_samd21j17a.o: $(SRCDIR)/system_samd21j17a.c $(BUILDIR)/system_samd21j17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J17A__ -o $@ -c $<
$(BUILDIR)/startup_samd21j17a.o: $(SRCDIR)/startup_samd21j17a.c $(BUILDIR)/startup_samd21j17a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J17A__ -o $@ -c $<

$(BUILDIR)/system_samd21j18a.o: $(SRCDIR)/system_samd21j18a.c $(BUILDIR)/system_samd21j18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J18A__ -o $@ -c $<
$(BUILDIR)/startup_samd21j18a.o: $(SRCDIR)/startup_samd21j18a.c $(BUILDIR)/startup_samd21j18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J18A__ -o $@ -c $<


$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
