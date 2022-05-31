#/bin/sh

theme=$1
alacritty_theme=''
lvim_theme=''
wallpaper=''
polybar=''
dmenu=''
opacity=false
config_dir=$HOME/.config/colorscheme

if [ -z $theme ]; then
	echo "You need to provide theme name:"
	printf "\t- [1] gruvbox_medium\n"
	printf "\t- [2] github_dark_default\n"
	printf "\t- [3] github_milky_light\n"
	# printf "\t- [3] github_dark\n"
	exit 1
fi

validateConfig() {
	if [ ! -d $config_dir ]; then
		mkdir -p $config_dir
		if [ ! -f $config_dir/config ]; then
			touch $config_dir/config
			echo "current_theme=$1" >>$config_dir/config
		fi
	fi
}

if [ $theme == 1 ] || [ $theme == "gruvbox_medium" ]; then
	validateConfig "gruvbox_material_medium_dark"
	alacritty_theme='gruvbox_material_medium_dark'
	lvim_theme='"gruvbox-material"'
	wallpaper='moshimoshibe'
	polybar='gruvbox_material_medium_dark'
	dmenu='gruvbox_material_medium_dark'
	opacity=true
elif [ $theme == 2 ] || [ $theme == "github_dark_default" ]; then
	alacritty_theme='github_dark_default'
	lvim_theme='"github_dark_default"'
	wallpaper='nord'
	polybar='github-dark-default'
	dmenu='github-dark-default'
elif [ $theme == 3 ] || [ $them == "github_milky_light" ]; then
	alacritty_theme='window_11'
	lvim_theme='"github_milky_light"'
	wallpaper='nord'
	polybar='github-milky-light'
	dmenu='github-dark-default'
else
	printf "Not an valid theme"
	exit 1
fi

# alacritty
alacritty_config=$HOME/.config/alacritty/alacritty.yml
color_line=$(grep 'colors: \*' $alacritty_config)
IFS='*'
read -a alacritty_arr <<<$color_line
current_theme=${alacritty_arr[1]}
sed -i "s/*$current_theme/*$alacritty_theme/" $alacritty_config
alacritty_opacity=$(grep 'opacity:' $HOME/.config/alacritty/alacritty.yml)
if [ $opacity == true ]; then
	sed -i "s/$alacritty_opacity/  opacity: 0.95/" $alacritty_config
else
	sed -i "s/$alacritty_opacity/  #opacity: 0.95/" $alacritty_config
fi

# lunarvim
lunarvim_config=$HOME/.config/lvim/config.lua
color_line=$(grep 'lvim.colorscheme' $lunarvim_config)
IFS='"'
read -a lunarvim_arr <<<$color_line
current_theme=\"${lunarvim_arr[1]}\"
sed -i "s/$current_theme/$lvim_theme/" $lunarvim_config
# if [ opacity == true ]; then
#   lunarvim_transparent=$(grep "lvim.transparent_window" $lunarvim_config)
#   sed -i "s/$lunarvim_transparent/lvim.transparent_window = true"
# fi

# polybar
polybar_color_config=$HOME/.config/polybar/colors.ini
color_line=$(grep 'current-color' $polybar_color_config)
IFS='='
read -a polybar_arr <<<$color_line
current_theme=${polybar_arr[1]}
sed -i "s/$current_theme/$polybar/" $polybar_color_config
sed -i "s/\[custom-colors\]/\[custom-colors-$current_theme\]/" $polybar_color_config
sed -i "s/\[custom-colors-$polybar\]/\[custom-colors\]/" $polybar_color_config
launch_polybar >>/dev/null &

# dmenu
dmenu_config=$HOME/.local/share/dmenu/config.h
color_line=$(grep 'current_theme' $dmenu_config)
IFS='='
read -a dmenu_arr <<<$color_line
current_theme=${dmenu_arr[1]}
mv "$HOME/.local/share/dmenu/config.h" "$HOME/.local/share/dmenu/config-$current_theme.h"
mv "$HOME/.local/share/dmenu/config-$dmenu.h" "$HOME/.local/share/dmenu/config.h"
(
	cd "$HOME/.local/share/dmenu/"
	sudo make clean install >>/dev/null &
)

killall wallpaper &&
	wallpaper $wallpaper >>/dev/null &
exit 0

# alacritty.gruvbox_material.medium_dark=gruvbox_material_medium_dark
# lvim.gruvbox_material.medium_dark="gruvbox-material"
# polybar.gruvbox_material.medium_dark=gruvbox_material_medium_dark
# dmenu.gruvbox_material.medium_dark=gruvbox_material_medium_dark
# 
# alacritty.github.dark_default=github_dark_default
# alacritty.github.dark_default="github_dark_default"
# polybar.github.dark_default=github-dark-default
# dmenu.github.dark_default=github-dark-default
#
