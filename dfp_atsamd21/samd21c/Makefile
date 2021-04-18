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

OBJS_SAMD21E15CU := system_samd21e15cu startup_samd21e15cu
OBJS_SAMD21E16CU := system_samd21e16cu startup_samd21e16cu
LIBS := libsamd21e15cu.a libsamd21e16cu.a


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


$(LIBDIR)/libsamd21e15cu.a: $(call objpath,$(OBJS_SAMD21E15CU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e16cu.a: $(call objpath,$(OBJS_SAMD21E16CU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd21e15cu.o: $(SRCDIR)/system_samd21e15cu.c $(BUILDIR)/system_samd21e15cu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15CU__ -o $@ -c $<
$(BUILDIR)/startup_samd21e15cu.o: $(SRCDIR)/startup_samd21e15cu.c $(BUILDIR)/startup_samd21e15cu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E15CU__ -o $@ -c $<

$(BUILDIR)/system_samd21e16cu.o: $(SRCDIR)/system_samd21e16cu.c $(BUILDIR)/system_samd21e16cu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16CU__ -o $@ -c $<
$(BUILDIR)/startup_samd21e16cu.o: $(SRCDIR)/startup_samd21e16cu.c $(BUILDIR)/startup_samd21e16cu.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E16CU__ -o $@ -c $<

$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
