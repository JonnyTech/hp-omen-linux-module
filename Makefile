install:
	dkms install .
	modprobe hp-wmi

uninstall:
	rmmod hp_wmi || true
	dkms remove hp-omen-wmi/0.9 --all || true
	rm /var/lib/dkms/hp-omen-wmi/0.9/source || true
	rm -rf /usr/src/hp-omen-wmi-0.9 || true
	rm -rf /var/lib/dkms/hp-omen-wmi || true
	rm /usr/lib/modules/*-amd64/kernel/drivers/platform/x86/hp/hp-wmi.* || true

all: install

