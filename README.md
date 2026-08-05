# Looking-Glass-Launcher
Launch looking glass client automatically when you start your virtual machines with Virtual Machine Manager's GUI. <br>
Looking Glass will close automatically as well. <br>
This script was made for Cachyos/Arch. <br><br>

## Installation
-move **lg-listener.service** into home/.config/systemd/user <br>
-move **lg-listener.sh** into home/.local/bin <br>
Then run the following commands to register the service for startup. <br><br>

> systemctl --user daemon-reload <br>
> systemctl --user enable your-service.service <br>
> systemctl --user start your-service.service  <br>
