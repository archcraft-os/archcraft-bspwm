# Maintainer: Aditya Shakya <adi1090x@gmail.com>

pkgname=archcraft-bspwm
pkgver=1.0
pkgrel=2
pkgdesc="Bspwm Configurations for Archcraft"
url="https://github.com/archcraft-os/archcraft-bspwm"
arch=('any')
license=('GPL3')
makedepends=()
depends=('archcraft-skeleton')
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)

prepare() {
	cp -af ../files/. ${srcdir}
}

package() {
	local _skeldir=${pkgdir}/etc/skel
	local _configdir=${_skeldir}/.config
	local _bspwmdir=${_configdir}/bspwm
	local _sxhkddir=${_configdir}/sxhkd

	mkdir -p "$_skeldir" && mkdir -p "$_configdir" && mkdir -p "$_bspwmdir" && mkdir -p "$_sxhkddir"

	# Copy bspwm specific config files
	cp -r ${srcdir}/.Xresources.d 		"$_skeldir"
	install -Dm 755 .fehbg   			"$_skeldir"/.fehbg
	install -Dm 644 .Xresources   		"$_skeldir"/.Xresources
	install -Dm 644 .xsettingsd   		"$_skeldir"/.xsettingsd

	cp -r ${srcdir}/libfm 					"$_configdir"
	cp -r ${srcdir}/pcmanfm 				"$_configdir"
	cp -r ${srcdir}/networkmanager-dmenu	"$_configdir"

	# Copy window manager configs
	cp -r ${srcdir}/alacritty 			"$_bspwmdir"
	cp -r ${srcdir}/polybar 			"$_bspwmdir"
	cp -r ${srcdir}/rofi 				"$_bspwmdir"
	cp -r ${srcdir}/themes 				"$_bspwmdir"
	cp -r ${srcdir}/bin 				"$_bspwmdir"
	chmod +x "$_bspwmdir"/bin/*
	chmod +x "$_bspwmdir"/rofi/bin/*
	chmod +x "$_bspwmdir"/themes/set-theme

	install -Dm 755 bspwmrc   			"$_bspwmdir"/bspwmrc
	install -Dm 644 picom.conf   		"$_bspwmdir"/picom.conf

	# Copy keybindings config file
	install -Dm 644 sxhkdrc				"$_sxhkddir"/sxhkdrc
}
