CC      := arm-none-eabi-gcc
AR	:= arm-none-eabi-gcc-ar

DEPFLAGS  = -MT $@ -MMD -MP -MF $*.mk
CSTD     := -std=c11
CFLAGS   += -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Os -ffunction-sections -fdata-sections -flto -ffat-lto-objects
INCLUDES  = -I$(LIBROOT)/arm-cmsis/include -Iinclude

# Base commands
CC.C = $(CC) $(CSTD) $(CFLAGS) $(DEPFLAGS) $(INCLUDES)

SRCDIR  := src
BUILDIR := build
LIBDIR  := lib
objpath = $(addprefix $(2)/,$(addsuffix .o,$(1)))

OBJS_SAMD51G18A := system_samd51g18a startup_samd51g18a fpu_init_samd51g18a
OBJS_SAMD51G19A := system_samd51g19a startup_samd51g19a fpu_init_samd51g19a
OBJS_SAMD51J18A := system_samd51j18a startup_samd51j18a fpu_init_samd51j18a
OBJS_SAMD51J19A := system_samd51j19a startup_samd51j19a fpu_init_samd51j19a
OBJS_SAMD51J20A := system_samd51j20a startup_samd51j20a fpu_init_samd51j20a
OBJS_SAMD51N19A := system_samd51n19a startup_samd51n19a fpu_init_samd51n19a
OBJS_SAMD51N20A := system_samd51n20a startup_samd51n20a fpu_init_samd51n20a
OBJS_SAMD51P19A := system_samd51p19a startup_samd51p19a fpu_init_samd51p19a
OBJS_SAMD51P20A := system_samd51p20a startup_samd51p20a fpu_init_samd51p20a
LIBS := libsamd51g18a.a libsamd51g19a.a libsamd51j18a.a libsamd51j19a.a \
	libsamd51j20a.a libsamd51n19a.a libsamd51n20a.a libsamd51p19a.a \
	libsamd51p20a.a


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


$(LIBDIR)/libsamd51g18a.a: $(call objpath,$(OBJS_SAMD51G18A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51g19a.a: $(call objpath,$(OBJS_SAMD51G19A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51j18a.a: $(call objpath,$(OBJS_SAMD51J18A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51j19a.a: $(call objpath,$(OBJS_SAMD51J19A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51j20a.a: $(call objpath,$(OBJS_SAMD51J20A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51n19a.a: $(call objpath,$(OBJS_SAMD51N19A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51n20a.a: $(call objpath,$(OBJS_SAMD51N20A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51p19a.a: $(call objpath,$(OBJS_SAMD51P19A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^
$(LIBDIR)/libsamd51p20a.a: $(call objpath,$(OBJS_SAMD51P20A),$(BUILDIR)) | $(LIBDIR)
	$(P_AR_$(V))$(AR) rcs $@ $^


$(BUILDIR)/system_samd51g18a.o: $(SRCDIR)/system_samd51g18a.c $(BUILDIR)/system_samd51g18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G18A__ -o $@ -c $<
$(BUILDIR)/startup_samd51g18a.o: $(SRCDIR)/startup_samd51g18a.c $(BUILDIR)/startup_samd51g18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G18A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51g18a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51g18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G18A__ -o $@ -c $<

$(BUILDIR)/system_samd51g19a.o: $(SRCDIR)/system_samd51g19a.c $(BUILDIR)/system_samd51g19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G19A__ -o $@ -c $<
$(BUILDIR)/startup_samd51g19a.o: $(SRCDIR)/startup_samd51g19a.c $(BUILDIR)/startup_samd51g19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G19A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51g19a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51g19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51G19A__ -o $@ -c $<

$(BUILDIR)/system_samd51j18a.o: $(SRCDIR)/system_samd51j18a.c $(BUILDIR)/system_samd51j18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J18A__ -o $@ -c $<
$(BUILDIR)/startup_samd51j18a.o: $(SRCDIR)/startup_samd51j18a.c $(BUILDIR)/startup_samd51j18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J18A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51j18a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51j18a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J18A__ -o $@ -c $<

$(BUILDIR)/system_samd51j19a.o: $(SRCDIR)/system_samd51j19a.c $(BUILDIR)/system_samd51j19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J19A__ -o $@ -c $<
$(BUILDIR)/startup_samd51j19a.o: $(SRCDIR)/startup_samd51j19a.c $(BUILDIR)/startup_samd51j19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J19A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51j19a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51j19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J19A__ -o $@ -c $<

$(BUILDIR)/system_samd51j20a.o: $(SRCDIR)/system_samd51j20a.c $(BUILDIR)/system_samd51j20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J20A__ -o $@ -c $<
$(BUILDIR)/startup_samd51j20a.o: $(SRCDIR)/startup_samd51j20a.c $(BUILDIR)/startup_samd51j20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J20A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51j20a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51j20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51J20A__ -o $@ -c $<

$(BUILDIR)/system_samd51n19a.o: $(SRCDIR)/system_samd51n19a.c $(BUILDIR)/system_samd51n19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N19A__ -o $@ -c $<
$(BUILDIR)/startup_samd51n19a.o: $(SRCDIR)/startup_samd51n19a.c $(BUILDIR)/startup_samd51n19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N19A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51n19a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51n19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N19A__ -o $@ -c $<

$(BUILDIR)/system_samd51n20a.o: $(SRCDIR)/system_samd51n20a.c $(BUILDIR)/system_samd51n20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N20A__ -o $@ -c $<
$(BUILDIR)/startup_samd51n20a.o: $(SRCDIR)/startup_samd51n20a.c $(BUILDIR)/startup_samd51n20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N20A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51n20a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51n20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51N20A__ -o $@ -c $<

$(BUILDIR)/system_samd51p19a.o: $(SRCDIR)/system_samd51p19a.c $(BUILDIR)/system_samd51p19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P19A__ -o $@ -c $<
$(BUILDIR)/startup_samd51p19a.o: $(SRCDIR)/startup_samd51p19a.c $(BUILDIR)/startup_samd51p19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P19A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51p19a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51p19a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P19A__ -o $@ -c $<

$(BUILDIR)/system_samd51p20a.o: $(SRCDIR)/system_samd51p20a.c $(BUILDIR)/system_samd51p20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P20A__ -o $@ -c $<
$(BUILDIR)/startup_samd51p20a.o: $(SRCDIR)/startup_samd51p20a.c $(BUILDIR)/startup_samd51p20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P20A__ -o $@ -c $<
$(BUILDIR)/fpu_init_samd51p20a.o: $(SRCDIR)/fpu_init.c $(BUILDIR)/fpu_init_samd51p20a.mk | $(BUILDIR)
	$(P_CC_$(V))$(CC.C) -D__ATSAMD51P20A__ -o $@ -c $<


$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
SRC_OBJS      := fpu_init_samd51g18a.o fpu_init_samd51g19a.o fpu_init_samd51j18a.o \
                 fpu_init_samd51j19a.o fpu_init_samd51j20a.o fpu_init_samd51n19a.o \
                 fpu_init_samd51n20a.o fpu_init_samd51p19a.o fpu_init_samd51p20a.o
SRC_DEP_FILES  += $(addprefix $(BUILDIR)/,$(SRC_OBJS:.o=.mk))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
