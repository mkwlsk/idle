# Systemd idle timer and service
Systemd units and script to shutdown server when there is no active logon or [Emby Media Server](https://emby.media) sessions.

# Usage
1. Copy `idle.service` and `idle.timer` to `/etc/systemd/system/`
2. Copy `idle.sh` to `/usr/local/bin/`
3. Enable and start `idle.timer`: `systemctl enable idle.timer && systemctl start idle.timer`
