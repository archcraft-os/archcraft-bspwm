# Maintainer: Aditya Shakya <adi1090x@gmail.com>

pkgname=archcraft-bspwm
pkgver=6.0
pkgrel=7
pkgdesc="Bspwm Configurations for Archcraft"
arch=('any')
url="https://github.com/archcraft-os/archcraft-bspwm"
license=('GPL3')
depends=('bspwm' 'sxhkd' 'feh' 'xsettingsd'
		'pulsemixer' 'light' 'polybar' 'rofi' 'dunst'
		'pastel' 'python-pywal'
)
optdepends=('alacritty: default terminal emulator'
			'kitty: secondary terminal emulator'
			'thunar: default file manager'
			'geany: default text editor'
			'firefox: default web browser'
			'viewnior: default image viewer'
			'betterlockscreen: default lockscreen'
			'ksuperkey: allows you to open the application launcher using the Super key'
			'networkmanager-dmenu-git: control NetworkManager via rofi'
			'mpd: server-side application for playing music, used in statusbars and scripts'
			'mpc: minimalist command line interface to MPD'
			'ffmpeg: complete solution to record, convert and stream audio and video, used in screenrecord scripts'
			'maim: utility to take a screenshot, used in screenshot scripts'
			'xclip: command line interface to the X11 clipboard'
			'xcolor: lightweight color picker for X11'
			'xfce4-power-manager: power manager'
			'xorg-xsetroot: fix cursor theming, set root background'
			'yad: display graphical dialogs from shell scripts'
			'wmname: utility to set the name of your window manager'
)
conflicts=('archcraft-bspwm-premium')
options=(!strip !emptydirs)
install="${pkgname}.install"

prepare() {
	cp -af ../files/. "$srcdir"
}

package() {
	local _skeldir="$pkgdir"/etc/skel
	local _configdir="$_skeldir"/.config
	local _wmdir="$_configdir"/bspwm

	mkdir -p "$_skeldir" && mkdir -p "$_configdir" && mkdir -p "$_wmdir"

	# Copy networkmanager config
	cp -r "$srcdir"/networkmanager-dmenu	"$_configdir"

	# Copy window manager configs
	cp -r "$srcdir"/alacritty 				"$_wmdir"
	cp -r "$srcdir"/kitty 					"$_wmdir"
	cp -r "$srcdir"/scripts 				"$_wmdir"
	cp -r "$srcdir"/themes 					"$_wmdir"
	
	install -Dm 755 bspwmrc   				"$_wmdir"/bspwmrc
	install -Dm 644 dunstrc   				"$_wmdir"/dunstrc
	install -Dm 644 picom.conf   			"$_wmdir"/picom.conf
	install -Dm 644 sxhkdrc					"$_wmdir"/sxhkdrc
	install -Dm 644 xsettingsd				"$_wmdir"/xsettingsd
	install -Dm 755 .fehbg   				"$_skeldir"/.fehbg

	# Make scripts executable
	chmod +x "$_wmdir"/scripts/*
	chmod +x "$_wmdir"/themes/polybar.sh

	apply_files=(`find ${_wmdir}/themes -type f | grep apply.sh`)
	for _afile in "${apply_files[@]}"; do
		chmod +x ${_afile}
	done

	launch_files=(`find ${_wmdir}/themes -type f | grep launch.sh`)
	for _lfile in "${launch_files[@]}"; do
		chmod +x ${_lfile}
	done

	scripts_dir=(`find ${_wmdir}/themes -type d | grep scripts`)
	for _script in "${scripts_dir[@]}"; do
		chmod +x ${_script}/*
	done
}
