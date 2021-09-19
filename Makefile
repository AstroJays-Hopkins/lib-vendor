LIBROOT := ..
export LIBROOT
export CFLAGS

.PHONY: all
all:
	$(MAKE) -C dfp_atsamd21
	$(MAKE) -C dfp_atsamd51
	$(MAKE) -C dfp_atsamd51_atmel

.PHONY: clean
clean:
	$(MAKE) -C dfp_atsamd21 $@
	$(MAKE) -C dfp_atsamd51 $@
	$(MAKE) -C dfp_atsamd51_atmel $@
