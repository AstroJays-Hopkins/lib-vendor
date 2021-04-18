parts = ["samd21e15a",
         "samd21e16a",
         "samd21e17a",
         "samd21e18a",
         "samd21g15a",
         "samd21g16a",
         "samd21g17a",
         "samd21g17au",
         "samd21g18a",
         "samd21g18au",
         "samd21j15a",
         "samd21j16a",
         "samd21j17a",
         "samd21j18a"]

print("LIB := " + " ".join(parts))
for part in parts:
    print("OBJS_{} := system_{} startup_{}".format(part.upper(), part, part))

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
          "-D__AT{}__ -o $@ -c $<\n".format(part, part, part, part.upper()))

