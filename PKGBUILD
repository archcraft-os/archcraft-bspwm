# Maintainer: Aditya Shakya <adi1090x@gmail.com>

pkgname=archcraft-bspwm
pkgver=2.0
pkgrel=0
pkgdesc="Bspwm Configurations for Archcraft"
url="https://github.com/archcraft-os/archcraft-bspwm"
arch=('any')
license=('GPL3')
makedepends=()
depends=('bspwm'
		'sxhkd' 
		'alacritty' 'thunar' 'geany'
		'rofi' 'polybar' 'dunst'
		'mpd' 'mpc'
		'maim' 'xclip' 'viewnior' 'feh'
		'ksuperkey' 
		'betterlockscreen'
		'xfce4-power-manager' 
		'xsettingsd'
		'xorg-xsetroot'
		'wmname'
)
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
install="${pkgname}.install"

prepare() {
	cp -af ../files/. ${srcdir}
}

package() {
	local _skeldir=${pkgdir}/etc/skel
	local _configdir=${_skeldir}/.config
	local _bspwmdir=${_configdir}/bspwm

	mkdir -p "$_skeldir" && mkdir -p "$_configdir" && mkdir -p "$_bspwmdir"

	# Copy networkmanager config
	cp -r ${srcdir}/networkmanager-dmenu	"$_configdir"

	# Copy window manager configs
	cp -r ${srcdir}/alacritty 			"$_bspwmdir"
	cp -r ${srcdir}/bin 				"$_bspwmdir"
	cp -r ${srcdir}/polybar 			"$_bspwmdir"
	cp -r ${srcdir}/rofi 				"$_bspwmdir"
	cp -r ${srcdir}/themes 				"$_bspwmdir"
	chmod +x "$_bspwmdir"/bin/*
	chmod +x "$_bspwmdir"/rofi/bin/*

	install -Dm 755 bspwmrc   			"$_bspwmdir"/bspwmrc
	install -Dm 644 dunstrc   			"$_bspwmdir"/dunstrc
	install -Dm 644 picom.conf   		"$_bspwmdir"/picom.conf
	install -Dm 644 sxhkdrc				"$_bspwmdir"/sxhkdrc
	install -Dm 644 xsettingsd			"$_bspwmdir"/xsettingsd
}
