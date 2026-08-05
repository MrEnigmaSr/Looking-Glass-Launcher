#!/bin/bash

VM_NAME="Windows 11 Emulated"

export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export WAYLAND_DISPLAY="wayland-0"
export DISPLAY=":0"
export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"

was_running=0

while true; do
    state=$(virsh --connect qemu:///system domstate "$VM_NAME" 2>/dev/null)

    if [[ "$state" == "running" ]] && [[ $was_running -eq 0 ]]; then
        sleep 2

        if ! pgrep -x looking-glass-client >/dev/null; then
            looking-glass-client -F &
        fi

        was_running=1
    fi

    if [[ "$state" != "running" ]]; then
        was_running=0
    fi

    sleep 2
done
