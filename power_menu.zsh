#!/usr/bin/zsh

chosen=$(printf "Spegni\nRiavvia\nBlocca" | rofi -dmenu)

case "$chosen" in
	"Spegni") poweroff ;;
	"Riavvia") reboot ;;
	"Blocca") /home/federico/scripts/lock.sh ;;
	*) exit 1 ;;
esac
