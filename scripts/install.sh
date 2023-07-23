#!/bin/bash -e

BIN_PATH='$out/usr/bin/'
LIB_EXEC_PATH='$out/usr/libexec/'
SCALABLE_ICONS_PATH='$out/usr/share/icons/hicolor/scalable/apps/'
SHORTCUTS_PATH='$out/usr/share/applications/'
DBUS_SYSTEM_PATH='$out/usr/share/dbus-1/system.d/'
DBUS_SERVICES_PATH='$out/usr/share/dbus-1/system-services/'



APP_BIN='mcontrolcenter'
SVG_ICON='mcontrolcenter.svg'
SHORTCUT='mcontrolcenter.desktop'
HELPER_BIN='mcontrolcenter-helper'
DBUS_CONF='mcontrolcenter-helper.conf'
DBUS_SERVICE='mcontrolcenter.helper.service'

echo "Installation start"

install -vDm755 ./app/mcontrolcenter $out/usr/bin/mcontrolcenter

rm -fv /home/$SUDO_USER/.local/share/applications/mcontrolcenter.desktop
install -vDm644 ./app/mcontrolcenter.desktop $out/usr/share/applications/mcontrolcenter.desktop

install -vDm644 ./app/mcontrolcenter.svg $out/usr/share/icons/hicolor/scalable/apps/mcontrolcenter.svg

install -vDm755 ./app/mcontrolcenter-helper $out/usr/libexec/mcontrolcenter-helper

install -vDm644 ./app/mcontrolcenter-helper.conf $out/usr/share/dbus-1/system.d/mcontrolcenter-helper.conf

install -vDm644 ./app/mcontrolcenter.helper.service $out/usr/share/dbus-1/system-services/mcontrolcenter.helper.service

echo "Installation was successful"

