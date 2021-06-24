
# Env
export PATH=$HOME/.local/bin:$PATH

# Auto startx on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
