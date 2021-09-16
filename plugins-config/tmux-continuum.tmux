# Enable automatic start with systemd
set -g @continuum-systemd-start-cmd 'start-server'
set -g @continuum-boot 'on'

# Restore last saved environment (automatically)
set -g @continuum-restore 'on'
