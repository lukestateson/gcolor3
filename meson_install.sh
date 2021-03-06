#!/usr/bin/env sh

if [ -z $DESTDIR ]; then
  DATADIR=$1

  # Update the desktop database
  update-desktop-database -q

  # Update icon cache
  gtk-update-icon-cache -f -t $MESON_INSTALL_DESTDIR_PREFIX/$DATADIR/icons/hicolor
fi
