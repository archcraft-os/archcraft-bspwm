# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Adaptive Theme
# ------------------------------------------------------------------------------

# Colors
background='#222d32'
foreground='#c4c7c5'
color0='#263640'
color1='#ec7875'
color2='#61c766'
color3='#fdd835'
color4='#42a5f5'
color5='#ba68c8'
color6='#4dd0e1'
color7='#bfbaac'
color8='#4a697d'
color9='#fb8784'
color10='#70d675'
color11='#ffe744'
color12='#51b4ff'
color13='#c979d7'
color14='#5cdff0'
color15='#fdf6e3'

accent='#00BCD4'
light_value='0.15'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Luv-Folders-Dark'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='adapta.conf'
geany_font='JetBrainsMono Nerd Font 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Adapta-Nokto'
icon_theme='Luv-Folders-Dark'
cursor_theme='Vimix'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x44'
dunst_origin='top-right'
dunst_font='Iosevka Custom 9'
dunst_border='1'
dunst_separator='1'

# Picom
picom_backend='glx'
picom_corner='0'
picom_shadow_r='20'
picom_shadow_o='0.60'
picom_shadow_x='-20'
picom_shadow_y='-20'
picom_blur_method='none'
picom_blur_strength='0'

# Bspwm
bspwm_fbc="$accent"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"
bspwm_border='1'
bspwm_gap='10'
bspwm_sratio='0.50'
