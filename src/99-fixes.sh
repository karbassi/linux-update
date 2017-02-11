# Fix drag and drop quirk
output "Fix drag and drop quirk"
wget -qLO /usr/share/X11/xorg.conf.d/60-drag-and-drop-quirk.conf \
     "$URL/usr/share/X11/xorg.conf.d/60-drag-and-drop-quirk.conf"
