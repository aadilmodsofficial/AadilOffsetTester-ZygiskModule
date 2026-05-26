#!/sbin/sh

ui_print "- Starting Offset Tester installation"

ui_print "- Creating opt directory"
mkdir -p "$MODPATH/opt"

ui_print "- Setting permissions on opt"
chmod -R 777 "$MODPATH/opt"

ui_print "- Setting recursive permissions"
set_perm_recursive "$MODPATH" root root 0755 0644

ui_print "- Installation complete"
