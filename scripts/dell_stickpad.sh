device_id=$(xinput --list | grep Stick | sed 's/.*id=\([0-9]*\).*/\1/')
xinput --set-prop "$device_id" "libinput Accel Speed" -0.95
