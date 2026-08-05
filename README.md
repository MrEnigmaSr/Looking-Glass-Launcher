# Looking-Glass-Launcher
Launch looking glass client automatically when you start your virtual machines with Virtual Machine Manager's GUI.
Looking Glass will close automatically as well.
This script was made for Cachyos/Arch.

# Installation
-move lg-listener.service goes in home/.config/systemd/user
-move lg-listener.sh goes in home/.local/bin
Then run the following commands to register the service for startup.

systemctl --user daemon-reload
systemctl --user enable your-service.service
systemctl --user start your-service.service
