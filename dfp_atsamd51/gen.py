parts = ["samd51g18a",
         "samd51g19a",
         "samd51j18a",
         "samd51j19a",
         "samd51j20a",
         "samd51n19a",
         "samd51n20a",
         "samd51p19a",
         "samd51p20a"]

for part in parts:
    print("OBJS_{} := system_{} startup_{} fpu_init_{}".format(part.upper(),
                                                               part, part, part))
print("LIBS := " + " ".join(["lib"+part+".a" for part in parts]))

print("")
for part in parts:
    print("$(LIBDIR)/lib{}.a: $(call objpath,$(OBJS_{}),$(BUILDIR)) | "
          "$(LIBDIR)\n\t$(P_AR_$(V))$(AR) rcs $@ $^".format(part, part.upper()))
print("")
for part in parts:
    print("$(BUILDIR)/system_{}.o: $(SRCDIR)/system_{}.c "
          "$(BUILDIR)/system_{}.mk | $(BUILDIR)\n\t$(P_CC_$(V))$(CC.C) "
          "-D__AT{}__ -o $@ -c $<".format(part, part, part, part.upper()))
    print("$(BUILDIR)/startup_{}.o: $(SRCDIR)/startup_{}.c "
          "$(BUILDIR)/startup_{}.mk | $(BUILDIR)\n\t$(P_CC_$(V))$(CC.C) "
          "-D__AT{}__ -o $@ -c $<".format(part, part, part, part.upper()))
    print("$(BUILDIR)/fpu_init_{}.o: $(SRCDIR)/fpu_init.c "
          "$(BUILDIR)/fpu_init_{}.mk | $(BUILDIR)\n\t$(P_CC_$(V))$(CC.C) "
          "-D__AT{}__ -o $@ -c $<\n".format(part, part, part.upper()))

print("SRC_OBJS := {}".format(" ".join(["fpu_init_" + part + ".mk" for part in parts])))
