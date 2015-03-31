all:

clean:
	rm -f *.pkg.tar.xz
	rm -rf pkg
	rm -rf src
	@#rm -f *.pkg.tar.xz
	@#rm -f *.db
	@#rm -f *.sig
	rm -f *.old
	rm -f *.old.sig
	rm -f upload

packages:
	makepkg

// CARCH=armv7h makepkg --pkg openhab-runtime

#all: update openhab.db.tar.xz upload

repository: openhab.db.tar.xz

openhab.db.tar.xz: *.pkg.tar.xz
	repo-add --sign --key 77432C30FB23930B openhab.db.tar.xz *.pkg.tar.xz

upload: openhab.db.tar.xz
	rsync -v openhab.db.tar.xz *.pkg.tar.xz andreasbrenk.com@s150916.gridserver.com:domains/andreasbrenk.com/html/archlinux/openhab/os/armv7h
	@date > upload

.PHONY: clean updpkgsums repository
