python -m autokey.gtkui &
{ inputplug -d -c /bin/echo; } | while read event; do case $event in XIDeviceEnabled*XISlaveKeyboard*) setxkbmap -option ctrl::nocaps; ;; esac; done &
