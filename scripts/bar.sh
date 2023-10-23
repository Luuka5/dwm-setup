

CHARGING_ICON=' '
WARNING_ICON=' '
BATTERY_FULL_ICON=''
BATTERY_2_ICON=''
BATTERY_3_ICON=''
BATTERY_4_ICON=''

FULL_AT=98

BAT_ICON=""
ICON=""

get_battery()
{
	# The vast majority of people only use one battery.

	if [ -d /sys/class/power_supply/BATT ]; then
		capacity=$(cat /sys/class/power_supply/BATT/capacity)
		charging=$(cat /sys/class/power_supply/BATT/status)
		if [[ "$charging" == "Charging" ]]; then
			ICON="$CHARGING_ICON"
		elif [[ $capacity -le 25 ]]; then
			ICON="$WARNING_ICON"
		fi

		if [[ $capacity -ge $FULL_AT ]]; then
			BAT_ICON=$BATTERY_FULL_ICON
		elif [[ $capacity -le 25 ]]; then
			BAT_ICON=$BATTERY_4_ICON
		elif [[ $capacity -le 60 ]]; then
			BAT_ICON=$BATTERY_3_ICON
		elif [[ $capacity -le $FULL_AT ]]; then
			BAT_ICON=$BATTERY_2_ICON
		fi
	fi
	echo "$ICON$BAT_ICON  $capacity%"
}

# dependency: curl
get_weather()
{
	curl -s v2.wttr.in | grep -e "Weather" | sed -n 2p | sed s/Weather://g | sed 's/,//g' | sed 's/+//g' | sed 's/°C.*/°C/' | sed 's/.*m//'
}

# dependency: wavemon
get_wlan()
{
    level=$(iwconfig | grep -o -P '(?<=level=-).*(?=dBm)')
    if [[ $level > 50 ]]; then
        echo "Good"
    elif [[ $level > 30 ]]; then
        echo bad
    elif [[ $level > 10 ]]; then
        echo worst
    fi
}

get_time()
{
    date +"%H.%M"
}

while true; do
    s="    "
    
    status="$(get_weather)$s$(get_wlan)$s$(get_battery)$s$(get_time)"

	xsetroot -name "$status"
	sleep 2
done