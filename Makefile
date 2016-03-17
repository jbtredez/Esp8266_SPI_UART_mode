all: $(PWD)/xtensa-lx106-elf/xtensa-lx106-elf/sysroot/usr/lib/libhal.a
all: wifiBoard

$(PWD)/xtensa-lx106-elf/xtensa-lx106-elf/sysroot/usr/lib/libhal.a: esp-open-sdk/Makefile
	$(MAKE) -C esp-open-sdk STANDALONE=y

esp-open-sdk/Makefile:
	@echo "You cloned without --recursive, fetching submodules for you."
	git submodule update --init --recursive


wifiBoard:
	$(MAKE) -C src

