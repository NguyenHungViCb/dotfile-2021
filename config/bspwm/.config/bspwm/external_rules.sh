#!/bin/bash
bspc query -N -n .leaf.local.\!automatic >/dev/null && exit
master_area="${BSPWMMASTER:-west}" west="@/1" east="@/2" north="$west" south="$east"
case "$master_area" in
    west|east) ss_dir="south";;&
    west) stack_area="east";;
    east) stack_area="west";;
    north|south) ss_dir="east";;&
    north) stack_area="south";;
    south) stack_area="north";;
esac
localnodect="$(bspc query -N -n .leaf.local | wc -l)"
if [ $localnodect -gt 1 ]; then
    echo "node=${!stack_area} split_dir=${ss_dir}"
else
    echo "private=on split_dir=${stack_area}"
fi

wid=$1
class=$2
instance=$3
consequences=$4

case "$class" in
  "Fig")
    eval "$consequences"
    WM_ROLE=$(xprop -notype -id $wid WM_WINDOW_ROLE | sed 's%WM_WINDOW_ROLE = %%')
    
    if [ "$WM_ROLE" == '"autocomplete"' ]; then
      echo -n "state=floating layer=above manage=off border=off"
    fi
    ;;
  *)
    eval "$consequences"
    WM_ROLE=$(xprop -notype -id $wid WM_WINDOW_ROLE | sed 's%WM_WINDOW_ROLE = %%')
    if [ "$WM_ROLE" == '"pop-up"' ]; then
      echo -n "state=floating"
    fi
esac

# title=$(xtitle $wid)
# emulator=$(echo $title | grep "Emulator")
# if [[ $emulator ]]; then
  # echo $wid >> ~/emulator.txt
  # emulatorNode="$(bspc query -N -n $wid)"
  # title=$(xtitle $emulatorNode)
  # if [[ "$title" == "Android Emulator -"* ]]; then
  #   notify-send $title
    # bspc node $emulatorNode -t floating
    # xdotool windowsize $emulatorNode 306 649
  # fi
# fi
