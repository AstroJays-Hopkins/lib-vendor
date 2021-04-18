parts = ["samd21e15l",
"samd21e16l",
"samd21e17l",
"samd21g15l",
"samd21g16l",
"samd21g17l"]

libnames = []
for part in parts:
    libnames.append("lib{}.a".format(part))
print("LIB := " + " ".join(libnames))

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

