if [ -n "${SUDO_USER:-}" ]
then
    homeDir=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    homeDir="$HOME"
fi

