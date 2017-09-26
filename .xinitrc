#exec xmonad

#Multiple WM switching
#Xmonad is base one

#session=${1:-xmonad}




#xcompmgr  &
#compton -b
synergyc 192.168.1.6 &
mons -d &
xrdb ~/.Xresources &

#feh --bg-scale ~/NAS/images/wallpapers/rem.jpg &
#nitrogen --restore &


#WM=${2}

case $2 in
	ratpoison) exec /usr/bin/ratpoison ;;
	herb)      exec herbstluftwm --locked ;;
	awesome)   exec awesome ;;
	xmonad)	   exec xmonad ;;
esac


#exec herbstluftwm
#exec awesome
