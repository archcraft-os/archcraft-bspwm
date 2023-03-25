# Maintainer: Aditya Shakya <adi1090x@gmail.com>

pkgname=archcraft-bspwm
pkgver=3.0
pkgrel=1
pkgdesc="Bspwm Configurations for Archcraft"
url="https://github.com/archcraft-os/archcraft-bspwm"
arch=('any')
license=('GPL3')
makedepends=()
depends=('bspwm' 'sxhkd' 'pastel' 'python-pywal'
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
		'pulsemixer' 'light' 'xcolor'
)
conflicts=('archcraft-bspwm-premium')
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
	cp -r ${srcdir}/scripts 			"$_bspwmdir"
	cp -r ${srcdir}/themes 				"$_bspwmdir"

	install -Dm 755 bspwmrc   			"$_bspwmdir"/bspwmrc
	install -Dm 644 dunstrc   			"$_bspwmdir"/dunstrc
	install -Dm 644 picom.conf   		"$_bspwmdir"/picom.conf
	install -Dm 644 sxhkdrc				"$_bspwmdir"/sxhkdrc
	install -Dm 644 xsettingsd			"$_bspwmdir"/xsettingsd
	install -Dm 755 .fehbg   			"$_skeldir"/.fehbg

	# Make scripts executable
	chmod +x "$_bspwmdir"/scripts/*
	chmod +x "$_bspwmdir"/themes/polybar.sh

	apply_files=(`find ${_bspwmdir}/themes -type f | grep apply.sh`)
	for _afile in "${apply_files[@]}"; do
		chmod +x ${_afile}
	done

	launch_files=(`find ${_bspwmdir}/themes -type f | grep launch.sh`)
	for _lfile in "${launch_files[@]}"; do
		chmod +x ${_lfile}
	done

	scripts_dir=(`find ${_bspwmdir}/themes -type d | grep scripts`)
	for _script in "${scripts_dir[@]}"; do
		chmod +x ${_script}/*
	done
}
