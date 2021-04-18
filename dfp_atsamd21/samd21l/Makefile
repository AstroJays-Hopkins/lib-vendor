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


OBJS_SAMD21E15L := system_samd21e15l startup_samd21e15l
OBJS_SAMD21E16L := system_samd21e16l startup_samd21e16l
OBJS_SAMD21E17L := system_samd21e17l startup_samd21e17l
OBJS_SAMD21G15L := system_samd21g15l startup_samd21g15l
OBJS_SAMD21G16L := system_samd21g16l startup_samd21g16l
OBJS_SAMD21G17L := system_samd21g17l startup_samd21g17l
LIBS := libsamd21e15l.a libsamd21e16l.a libsamd21e17l.a libsamd21g15l.a \
	libsamd21g16l.a libsamd21g17l.a


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


$(LIBDIR)/libsamd21e15l.a: $(call objpath,$(OBJS_SAMD21E15L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e16l.a: $(call objpath,$(OBJS_SAMD21E16L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e17l.a: $(call objpath,$(OBJS_SAMD21E17L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g15l.a: $(call objpath,$(OBJS_SAMD21G15L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g16l.a: $(call objpath,$(OBJS_SAMD21G16L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g17l.a: $(call objpath,$(OBJS_SAMD21G17L),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd21e15l.o: $(SRCDIR)/system_samd21e15l.c $(BUILDIR)/system_samd21e15l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15L__ -o $@ -c $<
$(BUILDIR)/startup_samd21e15l.o: $(SRCDIR)/startup_samd21e15l.c $(BUILDIR)/startup_samd21e15l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15L__ -o $@ -c $<

$(BUILDIR)/system_samd21e16l.o: $(SRCDIR)/system_samd21e16l.c $(BUILDIR)/system_samd21e16l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16L__ -o $@ -c $<
$(BUILDIR)/startup_samd21e16l.o: $(SRCDIR)/startup_samd21e16l.c $(BUILDIR)/startup_samd21e16l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16L__ -o $@ -c $<

$(BUILDIR)/system_samd21e17l.o: $(SRCDIR)/system_samd21e17l.c $(BUILDIR)/system_samd21e17l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17L__ -o $@ -c $<
$(BUILDIR)/startup_samd21e17l.o: $(SRCDIR)/startup_samd21e17l.c $(BUILDIR)/startup_samd21e17l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17L__ -o $@ -c $<

$(BUILDIR)/system_samd21g15l.o: $(SRCDIR)/system_samd21g15l.c $(BUILDIR)/system_samd21g15l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15L__ -o $@ -c $<
$(BUILDIR)/startup_samd21g15l.o: $(SRCDIR)/startup_samd21g15l.c $(BUILDIR)/startup_samd21g15l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G15L__ -o $@ -c $<

$(BUILDIR)/system_samd21g16l.o: $(SRCDIR)/system_samd21g16l.c $(BUILDIR)/system_samd21g16l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16L__ -o $@ -c $<
$(BUILDIR)/startup_samd21g16l.o: $(SRCDIR)/startup_samd21g16l.c $(BUILDIR)/startup_samd21g16l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G16L__ -o $@ -c $<

$(BUILDIR)/system_samd21g17l.o: $(SRCDIR)/system_samd21g17l.c $(BUILDIR)/system_samd21g17l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17L__ -o $@ -c $<
$(BUILDIR)/startup_samd21g17l.o: $(SRCDIR)/startup_samd21g17l.c $(BUILDIR)/startup_samd21g17l.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17L__ -o $@ -c $<


$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
