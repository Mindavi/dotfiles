#!/usr/bin/env bash
# source: https://agorf.gr/2016/06/29/low-battery-notification-in-i3wm/

THRESHOLD=15 # percent

lock_path='/tmp/batmon.lock'

# sudo apt install procmail
lockfile -r 0 $lock_path 2>/dev/null || exit

acpi_path=$(find /sys/class/power_supply/ -name 'BAT*' | head -1)
charge_now=$(cat "$acpi_path/energy_now")
charge_full=$(cat "$acpi_path/energy_full")
charge_status=$(cat "$acpi_path/status")
charge_percent=$(LC_NUMERIC="en_US.UTF-8" printf '%.0f' $(echo "$charge_now / $charge_full * 100" | bc -l))

if [[ $charge_status == 'Discharging' ]] && [[ $charge_percent -le $THRESHOLD ]]; then
  message="Battery running critically low at $charge_percent%!"
  DISPLAY=:0.0 /usr/bin/notify-send -u critical "Low battery" "$message"
fi

rm -f $lock_path

