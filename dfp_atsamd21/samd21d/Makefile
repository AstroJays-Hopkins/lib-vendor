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

OBJS_SAMD21E17D := system_samd21e17d startup_samd21e17d
OBJS_SAMD21E17DU := system_samd21e17du startup_samd21e17du
OBJS_SAMD21G17D := system_samd21g17d startup_samd21g17d
OBJS_SAMD21J17D := system_samd21j17d startup_samd21j17d
LIBS := libsamd21e17d.a libsamd21e17du.a libsamd21g17d.a libsamd21j17d.a


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


$(LIBDIR)/libsamd21e17d.a: $(call objpath,$(OBJS_SAMD21E17D),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21e17du.a: $(call objpath,$(OBJS_SAMD21E17DU),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21g17d.a: $(call objpath,$(OBJS_SAMD21G17D),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd21j17d.a: $(call objpath,$(OBJS_SAMD21J17D),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd21e17d.o: $(SRCDIR)/system_samd21e17d.c $(BUILDIR)/system_samd21e17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17D__ -o $@ -c $<
$(BUILDIR)/startup_samd21e17d.o: $(SRCDIR)/startup_samd21e17d.c $(BUILDIR)/startup_samd21e17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17D__ -o $@ -c $<

$(BUILDIR)/system_samd21e17du.o: $(SRCDIR)/system_samd21e17du.c $(BUILDIR)/system_samd21e17du.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17DU__ -o $@ -c $<
$(BUILDIR)/startup_samd21e17du.o: $(SRCDIR)/startup_samd21e17du.c $(BUILDIR)/startup_samd21e17du.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21E17DU__ -o $@ -c $<

$(BUILDIR)/system_samd21g17d.o: $(SRCDIR)/system_samd21g17d.c $(BUILDIR)/system_samd21g17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17D__ -o $@ -c $<
$(BUILDIR)/startup_samd21g17d.o: $(SRCDIR)/startup_samd21g17d.c $(BUILDIR)/startup_samd21g17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21G17D__ -o $@ -c $<

$(BUILDIR)/system_samd21j17d.o: $(SRCDIR)/system_samd21j17d.c $(BUILDIR)/system_samd21j17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J17D__ -o $@ -c $<
$(BUILDIR)/startup_samd21j17d.o: $(SRCDIR)/startup_samd21j17d.c $(BUILDIR)/startup_samd21j17d.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD21J17D__ -o $@ -c $<


$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
